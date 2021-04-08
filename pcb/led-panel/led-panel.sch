EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L pl9823:PL9823 D1
U 1 1 5FE504F0
P 3650 3000
F 0 "D1" H 4094 3046 50  0000 L CNN
F 1 "PL9823" H 4094 2955 50  0000 L CNN
F 2 "pl:PL9823-F5" H 3650 3000 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/rita/pl9823.pdf" H 3650 3000 50  0001 C CNN
	1    3650 3000
	1    0    0    -1  
$EndComp
$Comp
L pl9823:PL9823 D2
U 1 1 5FE50865
P 5300 3000
F 0 "D2" H 5744 3046 50  0000 L CNN
F 1 "PL9823" H 5744 2955 50  0000 L CNN
F 2 "pl:PL9823-F5" H 5300 3000 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/rita/pl9823.pdf" H 5300 3000 50  0001 C CNN
	1    5300 3000
	1    0    0    -1  
$EndComp
$Comp
L pl9823:PL9823 D3
U 1 1 5FE50D40
P 7000 3000
F 0 "D3" H 7444 3046 50  0000 L CNN
F 1 "PL9823" H 7444 2955 50  0000 L CNN
F 2 "pl:PL9823-F5" H 7000 3000 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/rita/pl9823.pdf" H 7000 3000 50  0001 C CNN
	1    7000 3000
	1    0    0    -1  
$EndComp
$Comp
L pl9823:PL9823 D4
U 1 1 5FE51135
P 8750 3000
F 0 "D4" H 9194 3046 50  0000 L CNN
F 1 "PL9823" H 9194 2955 50  0000 L CNN
F 2 "pl:PL9823-F5" H 8750 3000 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/rita/pl9823.pdf" H 8750 3000 50  0001 C CNN
	1    8750 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FE516D3
P 2900 3000
F 0 "C1" H 3015 3046 50  0000 L CNN
F 1 "100nf" H 3015 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2938 2850 50  0001 C CNN
F 3 "~" H 2900 3000 50  0001 C CNN
	1    2900 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FE51942
P 4500 3000
F 0 "C2" H 4615 3046 50  0000 L CNN
F 1 "100nf" H 4615 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4538 2850 50  0001 C CNN
F 3 "~" H 4500 3000 50  0001 C CNN
	1    4500 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5FE51B71
P 6150 2950
F 0 "C3" H 6265 2996 50  0000 L CNN
F 1 "100nf" H 6265 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6188 2800 50  0001 C CNN
F 3 "~" H 6150 2950 50  0001 C CNN
	1    6150 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5FE51D5A
P 7950 3000
F 0 "C4" H 8065 3046 50  0000 L CNN
F 1 "100nf" H 8065 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7988 2850 50  0001 C CNN
F 3 "~" H 7950 3000 50  0001 C CNN
	1    7950 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5FE524EF
P 1550 2900
F 0 "J1" H 1658 3181 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1658 3090 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x04_P2.00mm_Vertical" H 1550 2900 50  0001 C CNN
F 3 "~" H 1550 2900 50  0001 C CNN
	1    1550 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2650 7950 2850
Connection ~ 7950 2650
Wire Wire Line
	6150 2800 6150 2650
Connection ~ 6150 2650
Wire Wire Line
	4500 2650 4500 2850
Connection ~ 4500 2650
Wire Wire Line
	2900 2650 2900 2850
Wire Wire Line
	2900 3150 2900 3350
Wire Wire Line
	2900 3350 3650 3350
Connection ~ 3650 3350
Wire Wire Line
	3650 3350 4500 3350
Wire Wire Line
	5300 3350 6150 3350
Wire Wire Line
	7950 3350 7950 3150
Connection ~ 5300 3350
Connection ~ 7000 3350
Wire Wire Line
	7000 3350 7950 3350
Connection ~ 7950 3350
Wire Wire Line
	7950 3350 8750 3350
Wire Wire Line
	2700 2650 2700 2800
Wire Wire Line
	2700 2800 1750 2800
Wire Wire Line
	2700 2650 2900 2650
Connection ~ 2900 2650
Wire Wire Line
	1750 2900 3250 2900
Wire Wire Line
	3250 2900 3250 3000
Wire Wire Line
	2900 3350 2600 3350
Wire Wire Line
	2600 3350 2600 3000
Wire Wire Line
	2600 3000 1750 3000
Connection ~ 2900 3350
Wire Wire Line
	4050 2950 4900 2950
Wire Wire Line
	4900 2950 4900 3000
Wire Wire Line
	5700 2950 6600 2950
Wire Wire Line
	6600 2950 6600 3000
Wire Wire Line
	6150 3100 6150 3350
Connection ~ 6150 3350
Wire Wire Line
	6150 3350 7000 3350
Wire Wire Line
	7400 2950 7750 2950
Wire Wire Line
	7750 2950 7750 3000
Wire Wire Line
	7750 3000 8350 3000
Wire Wire Line
	9150 2950 9150 3600
Wire Wire Line
	9150 3600 1750 3600
Wire Wire Line
	1750 3600 1750 3100
Wire Wire Line
	4500 2650 5350 2650
Wire Wire Line
	6150 2650 7050 2650
Wire Wire Line
	2900 2650 3700 2650
Wire Wire Line
	4500 3150 4500 3350
Connection ~ 4500 3350
Wire Wire Line
	4500 3350 5300 3350
Connection ~ 3700 2650
Wire Wire Line
	3700 2650 4500 2650
Connection ~ 7050 2650
Wire Wire Line
	7050 2650 7950 2650
Connection ~ 5350 2650
Wire Wire Line
	5350 2650 6150 2650
Wire Wire Line
	7950 2650 8800 2650
Text Label 3200 2650 0    50   ~ 0
VDD
Text Label 3150 3350 0    50   ~ 0
GND
Text Label 2400 2900 0    50   ~ 0
DIN
Text Label 8700 3600 0    50   ~ 0
DO
$EndSCHEMATC
