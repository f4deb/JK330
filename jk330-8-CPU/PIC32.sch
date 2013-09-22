EESchema Schematic File Version 2
LIBS:conn
LIBS:power
LIBS:CEN-SCHEMA
LIBS:ELECTRONICAL_MAIN_BOARD_32-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "JK330-CPU"
Date "22 sep 2013"
Rev "V1-00"
Comp "F4DEB"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	9100 3950 10500 3950
Connection ~ 9800 4850
Wire Wire Line
	10150 4850 10150 4800
Connection ~ 9800 4450
Wire Wire Line
	10500 4450 10500 4500
Wire Wire Line
	9100 4450 10500 4450
Connection ~ 9800 3950
Wire Wire Line
	10500 3950 10500 3900
Connection ~ 9800 3550
Wire Wire Line
	10500 3550 10500 3600
Wire Wire Line
	7100 2500 7300 2500
Wire Wire Line
	4550 5650 2650 5650
Wire Wire Line
	4550 5550 2650 5550
Wire Wire Line
	4550 2250 2600 2250
Wire Wire Line
	7500 4800 7100 4800
Connection ~ 9450 4850
Connection ~ 9450 4450
Wire Wire Line
	7100 3550 7650 3550
Wire Wire Line
	7100 3750 7650 3750
Wire Wire Line
	7100 3950 7650 3950
Wire Wire Line
	7100 4150 7650 4150
Wire Wire Line
	9450 4400 9450 4500
Wire Wire Line
	9800 3950 9800 3900
Wire Wire Line
	9100 3950 9100 3900
Connection ~ 9450 3950
Wire Wire Line
	9450 3900 9450 4050
Wire Wire Line
	9450 3450 9450 3600
Wire Wire Line
	9100 3600 9100 3550
Wire Wire Line
	9800 3550 9800 3600
Connection ~ 9450 3550
Wire Wire Line
	7500 4500 7100 4500
Wire Wire Line
	7500 4700 7100 4700
Wire Wire Line
	7500 4400 7100 4400
Wire Wire Line
	7500 4600 7100 4600
Wire Wire Line
	9800 4450 9800 4500
Wire Wire Line
	9100 4450 9100 4500
Wire Wire Line
	9800 4850 9800 4800
Wire Wire Line
	9100 4800 9100 4850
Wire Wire Line
	9450 4800 9450 4950
Wire Wire Line
	7100 4250 7650 4250
Wire Wire Line
	7100 4050 7650 4050
Wire Wire Line
	7100 3850 7650 3850
Wire Wire Line
	7100 3650 7650 3650
Wire Bus Line
	7750 3400 7750 4150
Wire Bus Line
	7750 3400 8400 3400
Wire Wire Line
	8150 2250 7100 2250
Wire Wire Line
	4550 2350 2600 2350
Wire Notes Line
	6750 3300 6750 2350
Wire Notes Line
	6750 3300 7850 3300
Wire Notes Line
	7850 3300 7850 2350
Wire Notes Line
	7850 2350 6750 2350
Wire Wire Line
	7100 2400 7300 2400
Wire Wire Line
	10150 3550 10150 3600
Connection ~ 10150 3550
Wire Wire Line
	10150 3900 10150 3950
Connection ~ 10150 3950
Wire Wire Line
	10150 4500 10150 4450
Connection ~ 10150 4450
Wire Wire Line
	9100 4850 10500 4850
Wire Wire Line
	10500 4850 10500 4800
Connection ~ 10150 4850
Wire Wire Line
	9100 3550 10500 3550
$Comp
L C C8
U 1 1 4FD326D3
P 10500 3750
F 0 "C8" H 10550 3850 50  0000 L CNN
F 1 "100n" H 10550 3650 50  0000 L CNN
F 2 "" H 10500 3750 60  0001 C CNN
F 3 "" H 10500 3750 60  0001 C CNN
	1    10500 3750
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 4FD326D0
P 10150 3750
F 0 "C7" H 10200 3850 50  0000 L CNN
F 1 "100n" H 10200 3650 50  0000 L CNN
F 2 "" H 10150 3750 60  0001 C CNN
F 3 "" H 10150 3750 60  0001 C CNN
	1    10150 3750
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 4FD326CD
P 10500 4650
F 0 "C11" H 10550 4750 50  0000 L CNN
F 1 "100n" H 10550 4550 50  0000 L CNN
F 2 "" H 10500 4650 60  0001 C CNN
F 3 "" H 10500 4650 60  0001 C CNN
	1    10500 4650
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 4FD326CA
P 10150 4650
F 0 "C10" H 10200 4750 50  0000 L CNN
F 1 "100n" H 10200 4550 50  0000 L CNN
F 2 "" H 10150 4650 60  0001 C CNN
F 3 "" H 10150 4650 60  0001 C CNN
	1    10150 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 4FD220E7
P 7300 2500
F 0 "#PWR044" H 7300 2500 30  0001 C CNN
F 1 "GND" H 7300 2430 30  0001 C CNN
F 2 "" H 7300 2500 60  0001 C CNN
F 3 "" H 7300 2500 60  0001 C CNN
	1    7300 2500
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR045
U 1 1 4FD220DF
P 7300 2400
F 0 "#PWR045" H 7300 2360 30  0001 C CNN
F 1 "+3.3V" H 7300 2510 30  0000 C CNN
F 2 "" H 7300 2400 60  0001 C CNN
F 3 "" H 7300 2400 60  0001 C CNN
	1    7300 2400
	0    1    1    0   
$EndComp
Text Notes 7200 2850 0    90   ~ 0
INTERNAL\n
$Comp
L PIC32MX795F512H U1
U 1 1 4FCE8349
P 4650 2050
F 0 "U1" H 4700 2050 60  0000 C CNN
F 1 "PIC32MX795F512H" H 6550 2050 60  0000 C CNN
F 2 "" H 4650 2050 60  0001 C CNN
F 3 "" H 4650 2050 60  0001 C CNN
	1    4650 2050
	1    0    0    -1  
$EndComp
Text HLabel 2600 2250 0    60   Input ~ 0
PGED1
Text HLabel 2600 2350 0    60   Input ~ 0
PGEC1
Text HLabel 8150 2250 2    60   Input ~ 0
RST
Text HLabel 7500 4800 2    60   Input ~ 0
U2TX
$Comp
L C C3
U 1 1 4E31B894
P 9800 3750
F 0 "C3" H 9850 3850 50  0000 L CNN
F 1 "100n" H 9850 3650 50  0000 L CNN
F 2 "" H 9800 3750 60  0001 C CNN
F 3 "" H 9800 3750 60  0001 C CNN
	1    9800 3750
	1    0    0    -1  
$EndComp
Text HLabel 8400 3400 2    60   Input ~ 0
D[0..7]
Text HLabel 7500 4400 2    60   Input ~ 0
/WR
Text HLabel 7500 4600 2    60   Input ~ 0
/CE
Text HLabel 7500 4500 2    60   Input ~ 0
/RD
Text Label 7500 4250 2    60   ~ 0
D7
Text Label 7500 4150 2    60   ~ 0
D6
Text Label 7500 4050 2    60   ~ 0
D5
Text Label 7500 3950 2    60   ~ 0
D4
Text Label 7500 3850 2    60   ~ 0
D3
Text Label 7500 3750 2    60   ~ 0
D2
Text Label 7500 3650 2    60   ~ 0
D1
Text Label 7500 3550 2    60   ~ 0
D0
Entry Wire Line
	7650 3550 7750 3450
Entry Wire Line
	7650 3650 7750 3550
Entry Wire Line
	7650 3750 7750 3650
Entry Wire Line
	7650 3850 7750 3750
Entry Wire Line
	7650 3950 7750 3850
Entry Wire Line
	7650 4050 7750 3950
Entry Wire Line
	7650 4150 7750 4050
Entry Wire Line
	7650 4250 7750 4150
$Comp
L GND #PWR050
U 1 1 4E31D0A5
P 9450 4950
F 0 "#PWR050" H 9450 4950 30  0001 C CNN
F 1 "GND" H 9450 4880 30  0001 C CNN
F 2 "" H 9450 4950 60  0001 C CNN
F 3 "" H 9450 4950 60  0001 C CNN
	1    9450 4950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR051
U 1 1 4E31D0A2
P 9450 4400
F 0 "#PWR051" H 9450 4490 20  0001 C CNN
F 1 "+5V" H 9450 4490 30  0000 C CNN
F 2 "" H 9450 4400 60  0001 C CNN
F 3 "" H 9450 4400 60  0001 C CNN
	1    9450 4400
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 4E31D06F
P 9800 4650
F 0 "C6" H 9850 4750 50  0000 L CNN
F 1 "100n" H 9850 4550 50  0000 L CNN
F 2 "" H 9800 4650 60  0001 C CNN
F 3 "" H 9800 4650 60  0001 C CNN
	1    9800 4650
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 4E31D05F
P 9450 4650
F 0 "C5" H 9500 4750 50  0000 L CNN
F 1 "100n" H 9500 4550 50  0000 L CNN
F 2 "" H 9450 4650 60  0001 C CNN
F 3 "" H 9450 4650 60  0001 C CNN
	1    9450 4650
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 4E31D05C
P 9100 4650
F 0 "C4" H 9150 4750 50  0000 L CNN
F 1 "100n" H 9150 4550 50  0000 L CNN
F 2 "" H 9100 4650 60  0001 C CNN
F 3 "" H 9100 4650 60  0001 C CNN
	1    9100 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR052
U 1 1 4E31B8AC
P 9450 4050
F 0 "#PWR052" H 9450 4050 30  0001 C CNN
F 1 "GND" H 9450 3980 30  0001 C CNN
F 2 "" H 9450 4050 60  0001 C CNN
F 3 "" H 9450 4050 60  0001 C CNN
	1    9450 4050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR053
U 1 1 4E31B8A5
P 9450 3450
F 0 "#PWR053" H 9450 3410 30  0001 C CNN
F 1 "+3.3V" H 9450 3560 30  0000 C CNN
F 2 "" H 9450 3450 60  0001 C CNN
F 3 "" H 9450 3450 60  0001 C CNN
	1    9450 3450
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 4E31B891
P 9450 3750
F 0 "C2" H 9500 3850 50  0000 L CNN
F 1 "100n" H 9500 3650 50  0000 L CNN
F 2 "" H 9450 3750 60  0001 C CNN
F 3 "" H 9450 3750 60  0001 C CNN
	1    9450 3750
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4E31B88E
P 9100 3750
F 0 "C1" H 9150 3850 50  0000 L CNN
F 1 "100n" H 9150 3650 50  0000 L CNN
F 2 "" H 9100 3750 60  0001 C CNN
F 3 "" H 9100 3750 60  0001 C CNN
	1    9100 3750
	1    0    0    -1  
$EndComp
Text Notes 4200 900  0    150  ~ 30
MICROCONTROLLER\n
Text Notes 4650 1650 0    90   ~ 18
PIC
Text Notes 9250 3100 0    90   ~ 18
FILTER CAPACITOR
Text HLabel 7500 4700 2    60   Input ~ 0
U2RX
Text HLabel 2650 5650 0    60   Input ~ 0
SCL1
Text HLabel 2650 5550 0    60   Input ~ 0
SDA1
Wire Wire Line
	4550 5450 4300 5450
Text HLabel 4300 5450 0    60   Input ~ 0
C/D
Wire Wire Line
	4550 2450 3850 2450
Wire Wire Line
	3850 2550 4550 2550
Wire Wire Line
	3850 2650 4550 2650
Wire Wire Line
	3850 2750 4550 2750
Wire Wire Line
	3850 2850 4550 2850
Wire Wire Line
	3850 2950 4550 2950
Wire Wire Line
	3850 3050 4550 3050
Wire Wire Line
	3850 3150 4550 3150
Wire Wire Line
	3850 3250 4550 3250
Wire Wire Line
	3850 3350 4550 3350
Wire Wire Line
	3850 3450 4550 3450
Wire Wire Line
	3850 3550 4550 3550
Wire Wire Line
	3850 3650 4550 3650
Wire Wire Line
	3850 3750 4550 3750
Wire Wire Line
	3350 3900 4550 3900
Wire Notes Line
	4350 4150 4350 4550
Wire Notes Line
	4350 4550 5200 4550
Wire Notes Line
	5200 4550 5200 4150
Wire Notes Line
	5200 4150 4350 4150
Text Notes 4800 4250 2    60   ~ 0
INTERNAL\n
Text HLabel 3850 2450 0    60   Input ~ 0
ADC1
Text HLabel 3850 2550 0    60   Input ~ 0
ADC2
Text HLabel 3850 2650 0    60   Input ~ 0
ADC3
Text HLabel 3850 2750 0    60   Input ~ 0
ADC4
Text HLabel 3850 2850 0    60   Input ~ 0
ADC5
Text HLabel 3850 2950 0    60   Input ~ 0
ADC6
Text HLabel 3850 3050 0    60   Input ~ 0
ADC7
Text HLabel 3850 3150 0    60   Input ~ 0
ADC8
Text HLabel 3850 3250 0    60   Input ~ 0
ADC9
Text HLabel 3850 3350 0    60   Input ~ 0
ADC10
Text HLabel 3850 3550 0    60   Input ~ 0
ADC12
Text HLabel 3850 3450 0    60   Input ~ 0
ADC11
Text HLabel 3850 3650 0    60   Input ~ 0
ADC13
Text HLabel 3850 3750 0    60   Input ~ 0
ADC14
Wire Wire Line
	2750 4050 4550 4050
$Comp
L CRYSTAL1 X?
U 1 1 523F4EF1
P 3150 3900
F 0 "X?" H 3150 4050 60  0000 C CNN
F 1 "32.768khz" H 3150 3750 60  0000 C CNN
F 2 "~" H 3150 3900 60  0000 C CNN
F 3 "~" H 3150 3900 60  0000 C CNN
	1    3150 3900
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 523F4F0A
P 2750 4350
F 0 "C?" H 2800 4450 50  0000 L CNN
F 1 "C" H 2800 4250 50  0000 L CNN
F 2 "~" H 2750 4350 60  0000 C CNN
F 3 "~" H 2750 4350 60  0000 C CNN
	1    2750 4350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 523F4F19
P 3500 4350
F 0 "C?" H 3550 4450 50  0000 L CNN
F 1 "C" H 3550 4250 50  0000 L CNN
F 2 "~" H 3500 4350 60  0000 C CNN
F 3 "~" H 3500 4350 60  0000 C CNN
	1    3500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4200 2750 3900
Wire Wire Line
	2750 3900 2950 3900
Wire Wire Line
	3500 4200 3500 3900
Connection ~ 3500 3900
Connection ~ 2750 4050
Wire Wire Line
	2750 4500 2750 4550
Wire Wire Line
	3500 4500 3500 4550
$Comp
L GND #PWR?
U 1 1 523F514A
P 2750 4550
F 0 "#PWR?" H 2750 4550 30  0001 C CNN
F 1 "GND" H 2750 4480 30  0001 C CNN
F 2 "" H 2750 4550 60  0000 C CNN
F 3 "" H 2750 4550 60  0000 C CNN
	1    2750 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 523F5159
P 3500 4550
F 0 "#PWR?" H 3500 4550 30  0001 C CNN
F 1 "GND" H 3500 4480 30  0001 C CNN
F 2 "" H 3500 4550 60  0000 C CNN
F 3 "" H 3500 4550 60  0000 C CNN
	1    3500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4650 4250 4650
Wire Wire Line
	4550 4750 4250 4750
Wire Wire Line
	4550 5050 4250 5050
Wire Wire Line
	7100 5550 7600 5550
Wire Wire Line
	7100 5650 7600 5650
Text HLabel 7600 5550 2    60   Input ~ 0
U3RX
Text HLabel 7600 5650 2    60   Input ~ 0
U3TX
Wire Wire Line
	4250 4850 4550 4850
Wire Wire Line
	4250 4950 4550 4950
Text HLabel 4250 4650 0    60   Input ~ 0
OC1
Text HLabel 4250 4750 0    60   Input ~ 0
OC2
Text HLabel 4250 4850 0    60   Input ~ 0
OC3
Text HLabel 4250 4950 0    60   Input ~ 0
OC4
Text HLabel 4250 5050 0    60   Input ~ 0
OC5
$EndSCHEMATC
