#include <Arduino.h>

#include <Servo.h>
#include <FastLED.h>
#include <Ultrasonic.h>

#define NUM_LEDS 4
#define LED_PIN 7
#define PIN_US_TRIGGER 12
#define PIN_US_ECHO 13
#define PIN_SERVO 9

Ultrasonic ultrasonic(PIN_US_TRIGGER, PIN_US_ECHO);
Servo head;
CRGB leds[NUM_LEDS];
uint8_t led_brightness = 10;
int distance;
unsigned long us_start_time = 0;
unsigned long us_interval_time = 100;
uint8_t us_interval = 0;
int us_distance = 0;
bool head_rotate = false;

unsigned long led_start_time = 0;
unsigned long led_interval_time = 650;

unsigned long head_start_time = 0;
unsigned long head_interval_time = 100;

uint8_t head_pos = 90;
bool head_direction = true;

#define MAX_LED_COLORS 7
CRGB colors[MAX_LED_COLORS + 1] = {
  CRGB::Maroon,
  CRGB::DarkRed,
  CRGB::DarkBlue,
  CRGB::DarkGreen,
  CRGB::ForestGreen,
  CRGB::MediumOrchid,
  CRGB::Purple,
  CRGB::BlueViolet,
};

void setup() {
  Serial.begin(9600);
  Serial.println("Starting...");

  head.attach(PIN_SERVO);
  ultrasonic.setTimeout(20000UL);

  FastLED.addLeds<PL9823, LED_PIN>(leds, NUM_LEDS);
  FastLED.setBrightness(led_brightness);
  FastLED.clear(true);

  leds[0] = CRGB::MediumOrchid;
  leds[1] = CRGB::DarkBlue;
  leds[2] = CRGB::DarkGreen;
  leds[3] = CRGB::ForestGreen;

  FastLED.show();

  us_start_time = millis();
  led_start_time = millis();

  head.write(head_pos);
}

void loop() {
  if (millis() - led_start_time >= led_interval_time) {
    led_start_time = millis();
    leds[0] = colors[random(0, MAX_LED_COLORS)];
    leds[1] = colors[random(0, MAX_LED_COLORS)];
    leds[2] = colors[random(0, MAX_LED_COLORS)];
    leds[3] = colors[random(0, MAX_LED_COLORS)];
    FastLED.show();
  }
  if (millis() - us_start_time >= us_interval_time) {
    int d = ultrasonic.read();
    us_distance += d;
    if (us_interval == 4 && head_rotate == false) {
      if ((us_distance/4) > 5 && (us_distance/4) < 13) {
        head_rotate = true;
        head_start_time = millis();
      }
      us_interval = 0;
      us_distance = 0;
    }
    else {
      us_interval++;
    }
    us_start_time = millis();
  }

  if ((millis() - head_start_time  >= head_interval_time) && head_rotate == true) {

    if (head_pos > 150) {
      head_direction = false;
    }
    if (head_pos < 30) {
      head_direction = true;
    }
    if (head_direction == true) {
      head_pos++;
    }
    else {
      head_pos--;
    }

    head.write(head_pos);
    head_start_time = millis();
  }
}
