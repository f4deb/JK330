EESchema Schematic File Version 2
LIBS:power
LIBS:transistors
LIBS:conn
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:CEN-SCHEMA
LIBS:CHARGEUR-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "29 dec 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PNP Q?
U 1 1 52530D25
P 6100 2450
F 0 "Q?" V 6350 2600 60  0000 R CNN
F 1 "PNP" V 6350 2400 60  0000 R CNN
F 2 "~" H 6100 2450 60  0000 C CNN
F 3 "~" H 6100 2450 60  0000 C CNN
	1    6100 2450
	0    1    -1   0   
$EndComp
$Comp
L CP C?
U 1 1 52530F91
P 6550 5200
F 0 "C?" H 6600 5300 50  0000 L CNN
F 1 "10U" H 6600 5100 50  0000 L CNN
F 2 "~" H 6550 5200 60  0000 C CNN
F 3 "~" H 6550 5200 60  0000 C CNN
	1    6550 5200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 52531D7D
P 5750 2700
F 0 "R?" V 5700 2600 50  0000 C CNN
F 1 "150" V 5800 2600 50  0000 C CNN
F 2 "~" H 5750 2700 60  0000 C CNN
F 3 "~" H 5750 2700 60  0000 C CNN
	1    5750 2700
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 52531D96
P 5550 2600
F 0 "C?" H 5450 2700 50  0000 L CNN
F 1 "10n" H 5400 2500 50  0000 L CNN
F 2 "~" H 5550 2600 60  0000 C CNN
F 3 "~" H 5550 2600 60  0000 C CNN
	1    5550 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3300 5700 3300
Wire Wire Line
	6100 2650 6100 3300
Wire Wire Line
	5550 2750 5550 2800
Wire Wire Line
	5550 2800 6100 2800
Connection ~ 6100 2800
Wire Wire Line
	5750 2750 5750 2800
Connection ~ 5750 2800
Wire Wire Line
	3450 2350 5900 2350
Wire Wire Line
	5550 2350 5550 2450
Wire Wire Line
	5750 2450 5750 2350
Connection ~ 5750 2350
$Comp
L DIODE D?
U 1 1 52531DCD
P 6550 2900
F 0 "D?" H 6550 3000 40  0000 C CNN
F 1 "1N4001" H 6550 2800 40  0000 C CNN
F 2 "~" H 6550 2900 60  0000 C CNN
F 3 "~" H 6550 2900 60  0000 C CNN
	1    6550 2900
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P?
U 1 1 52531DE6
P 7150 4350
F 0 "P?" V 7100 4350 40  0000 C CNN
F 1 "CONN_2" V 7200 4350 40  0000 C CNN
F 2 "" H 7150 4350 60  0000 C CNN
F 3 "" H 7150 4350 60  0000 C CNN
	1    7150 4350
	1    0    0    1   
$EndComp
$Comp
L MAX712 U?
U 1 1 52532494
P 5250 3950
F 0 "U?" H 5700 4850 60  0000 C CNN
F 1 "MAX712" H 5250 4850 60  0000 C CNN
F 2 "~" H 5250 4850 60  0000 C CNN
F 3 "~" H 5250 4850 60  0000 C CNN
	1    5250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4250 6800 4250
Wire Wire Line
	5700 4450 6800 4450
$Comp
L R R?
U 1 1 52532AE8
P 5900 4600
F 0 "R?" V 5850 4500 50  0000 C CNN
F 1 "0.68" V 5950 4500 50  0000 C CNN
F 2 "~" H 5900 4600 60  0000 C CNN
F 3 "~" H 5900 4600 60  0000 C CNN
	1    5900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4550 5900 4450
Connection ~ 5900 4450
Wire Wire Line
	5050 5350 5050 4850
Wire Wire Line
	5900 5350 5900 4850
Wire Wire Line
	5500 4850 5500 4950
Wire Wire Line
	5500 4950 5750 4950
Wire Wire Line
	5750 5250 5750 3850
Connection ~ 5750 4450
Wire Wire Line
	3450 5350 6800 5350
$Comp
L C C?
U 1 1 52532BC0
P 5300 5050
F 0 "C?" H 5350 5150 50  0000 L CNN
F 1 "10n" H 5350 4950 50  0000 L CNN
F 2 "~" H 5300 5050 60  0000 C CNN
F 3 "~" H 5300 5050 60  0000 C CNN
	1    5300 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4850 5300 4900
Wire Wire Line
	5300 5200 5300 5250
Wire Wire Line
	4750 5250 5750 5250
Connection ~ 5750 4950
NoConn ~ 4800 3300
NoConn ~ 4800 3400
NoConn ~ 5700 3750
Wire Wire Line
	5750 3850 5700 3850
Text Notes 5800 3850 0    60   ~ 0
66 minutes
Text Notes 4300 3400 0    60   ~ 0
6 Cellules\n
$Comp
L CONN_2 P?
U 1 1 52532CFB
P 7150 5150
F 0 "P?" V 7100 5150 40  0000 C CNN
F 1 "CONN_2" V 7200 5150 40  0000 C CNN
F 2 "" H 7150 5150 60  0000 C CNN
F 3 "" H 7150 5150 60  0000 C CNN
	1    7150 5150
	1    0    0    1   
$EndComp
Wire Wire Line
	6550 3000 6550 5100
Wire Wire Line
	6550 5050 6800 5050
Connection ~ 6550 4250
Connection ~ 5900 5350
Connection ~ 6550 5050
Wire Wire Line
	6550 5300 6550 5350
Connection ~ 6550 5350
Wire Wire Line
	6800 5350 6800 5250
$Comp
L R R?
U 1 1 52532ED8
P 4750 4950
F 0 "R?" V 4700 4850 50  0000 C CNN
F 1 "22k" V 4800 4850 50  0000 C CNN
F 2 "~" H 4750 4950 60  0000 C CNN
F 3 "~" H 4750 4950 60  0000 C CNN
	1    4750 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4450 4800 4450
Wire Wire Line
	4750 4450 4750 4900
Wire Wire Line
	4750 5250 4750 5200
Connection ~ 5300 5250
$Comp
L R R?
U 1 1 52532F33
P 4650 4200
F 0 "R?" V 4600 4100 50  0000 C CNN
F 1 "68k" V 4700 4100 50  0000 C CNN
F 2 "~" H 4650 4200 60  0000 C CNN
F 3 "~" H 4650 4200 60  0000 C CNN
	1    4650 4200
	1    0    0    -1  
$EndComp
Connection ~ 4750 4450
Wire Wire Line
	4800 4150 4650 4150
Wire Wire Line
	4800 4050 4650 4050
Wire Wire Line
	4650 4050 4650 4150
Connection ~ 4650 4150
Wire Wire Line
	4100 3850 4800 3850
Wire Wire Line
	4400 3850 4400 3700
Wire Wire Line
	4400 3700 4800 3700
$Comp
L R R?
U 1 1 5253301A
P 4100 2500
F 0 "R?" V 4050 2400 50  0000 C CNN
F 1 "680" V 4150 2400 50  0000 C CNN
F 2 "~" H 4100 2500 60  0000 C CNN
F 3 "~" H 4100 2500 60  0000 C CNN
	1    4100 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2350 4100 2450
Connection ~ 5550 2350
Wire Wire Line
	4100 2750 4100 4900
Connection ~ 4100 3850
$Comp
L C C?
U 1 1 525330C2
P 4100 5050
F 0 "C?" H 4150 5150 50  0000 L CNN
F 1 "1U" H 4150 4950 50  0000 L CNN
F 2 "~" H 4100 5050 60  0000 C CNN
F 3 "~" H 4100 5050 60  0000 C CNN
	1    4100 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5200 4100 5350
Connection ~ 5050 5350
Wire Wire Line
	3450 5350 3450 4450
Wire Wire Line
	3450 4450 3250 4450
Connection ~ 4100 5350
$Comp
L CONN_2 P?
U 1 1 5253313F
P 2900 4350
F 0 "P?" V 2850 4350 40  0000 C CNN
F 1 "CONN_2" V 2950 4350 40  0000 C CNN
F 2 "" H 2900 4350 60  0000 C CNN
F 3 "" H 2900 4350 60  0000 C CNN
	1    2900 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 2350 3450 4250
Wire Wire Line
	3450 4250 3250 4250
Connection ~ 4100 2350
Wire Wire Line
	6300 2350 6550 2350
Wire Wire Line
	6550 2350 6550 2800
Text Notes 3900 4250 0    60   ~ 0
Thermistance\nA placer contre\n la batterie\n
$Comp
L R R?
U 1 1 525333D7
P 4400 2900
F 0 "R?" V 4350 2800 50  0000 C CNN
F 1 "470" V 4450 2800 50  0000 C CNN
F 2 "~" H 4400 2900 60  0000 C CNN
F 3 "~" H 4400 2900 60  0000 C CNN
	1    4400 2900
	0    -1   -1   0   
$EndComp
$Comp
L LED D?
U 1 1 525333E6
P 4950 2900
F 0 "D?" H 4950 3000 50  0000 C CNN
F 1 "LED" H 4950 2800 50  0000 C CNN
F 2 "~" H 4950 2900 60  0000 C CNN
F 3 "~" H 4950 2900 60  0000 C CNN
	1    4950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2900 4100 2900
Connection ~ 4100 2900
Wire Wire Line
	4650 2900 4800 2900
Wire Wire Line
	5100 2900 5850 2900
Wire Wire Line
	5850 2900 5850 3500
Wire Wire Line
	5850 3500 5700 3500
Text Notes 7350 5200 0    60   ~ 12
LOAD
$EndSCHEMATC
