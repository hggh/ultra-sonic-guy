#include <Arduino.h>

#include <Servo.h>
#include <FastLED.h>
#include <Ultrasonic.h>

#define NUM_LEDS 4
#define LED_PIN 7

Ultrasonic ultrasonic(12, 13);
Servo head;
CRGB leds[NUM_LEDS];
uint8_t led_brightness = 20;

int distance;

void setup() {
  Serial.begin(9600);

  head.attach(9);
  ultrasonic.setTimeout(40000UL);

  FastLED.addLeds<PL9823, LED_PIN>(leds, NUM_LEDS);
  FastLED.setBrightness(led_brightness);
  FastLED.clear(true);

  leds[0] = CRGB::DarkRed;
  leds[1] = CRGB::DarkBlue;
  leds[2] = CRGB::DarkGreen;
  leds[3] = CRGB::ForestGreen;

  FastLED.show();

  
}

void loop() {
  FastLED.show();
  distance = ultrasonic.read();
  Serial.print("Distance in CM: ");
  Serial.println(distance);
  delay(1000);
}
