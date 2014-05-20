EESchema Schematic File Version 2
LIBS:power
LIBS:CEN-SCHEMA
LIBS:PCF8574T-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "8 mar 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PCF8574T U1
U 1 1 531B7A0F
P 6450 2900
F 0 "U1" H 6450 2950 60  0000 C CNN
F 1 "PCF8574T" H 6450 3050 60  0000 C CNN
F 2 "~" H 6450 2900 60  0000 C CNN
F 3 "~" H 6450 2900 60  0000 C CNN
	1    6450 2900
	1    0    0    -1  
$EndComp
$Comp
L PCF8574T U2
U 1 1 531B7A1E
P 6450 4900
F 0 "U2" H 6450 4950 60  0000 C CNN
F 1 "PCF8574T" H 6450 5050 60  0000 C CNN
F 2 "~" H 6450 4900 60  0000 C CNN
F 3 "~" H 6450 4900 60  0000 C CNN
	1    6450 4900
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P1
U 1 1 531B7A41
P 3050 3650
F 0 "P1" V 3000 3650 50  0000 C CNN
F 1 "CONN_4" V 3100 3650 50  0000 C CNN
F 2 "" H 3050 3650 60  0000 C CNN
F 3 "" H 3050 3650 60  0000 C CNN
	1    3050 3650
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 531B7A64
P 3450 3400
F 0 "#PWR01" H 3450 3400 30  0001 C CNN
F 1 "GND" H 3450 3330 30  0001 C CNN
F 2 "" H 3450 3400 60  0000 C CNN
F 3 "" H 3450 3400 60  0000 C CNN
	1    3450 3400
	1    0    0    1   
$EndComp
$Comp
L +5VD #PWR02
U 1 1 531B7A73
P 3450 3600
F 0 "#PWR02" H 3450 3550 20  0001 C CNN
F 1 "+5VD" H 3450 3700 30  0000 C CNN
F 2 "" H 3450 3600 60  0000 C CNN
F 3 "" H 3450 3600 60  0000 C CNN
	1    3450 3600
	0    1    1    0   
$EndComp
$Comp
L CONN_8X2 P2
U 1 1 531B7AC1
P 8050 4500
F 0 "P2" H 8050 4950 60  0000 C CNN
F 1 "CONN_8X2" V 8050 4500 50  0000 C CNN
F 2 "" H 8050 4500 60  0000 C CNN
F 3 "" H 8050 4500 60  0000 C CNN
	1    8050 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 3500 3450 3500
Wire Wire Line
	3450 3500 3450 3400
Wire Wire Line
	3400 3600 3450 3600
Wire Wire Line
	3400 3800 6200 3800
Wire Wire Line
	4500 3800 4500 5800
Wire Wire Line
	4500 5800 6200 5800
Connection ~ 4500 3800
Wire Wire Line
	4600 3700 4600 5700
Wire Wire Line
	4600 5700 6200 5700
Connection ~ 4600 3700
Wire Wire Line
	6900 3200 7700 3200
Wire Wire Line
	6900 3300 7800 3300
Wire Wire Line
	6900 3400 7900 3400
Wire Wire Line
	6900 3500 8000 3500
Wire Wire Line
	6900 3600 8100 3600
Wire Wire Line
	6900 3700 8200 3700
Wire Wire Line
	6900 3800 8300 3800
Wire Wire Line
	6900 3900 8400 3900
Wire Wire Line
	8400 3900 8400 4200
Wire Wire Line
	8300 3800 8300 4200
Wire Wire Line
	8200 3700 8200 4200
Wire Wire Line
	8100 3600 8100 4200
Wire Wire Line
	8000 3500 8000 4200
Wire Wire Line
	7900 3400 7900 4200
Wire Wire Line
	7800 3300 7800 4200
Wire Wire Line
	7700 3200 7700 4200
Wire Wire Line
	6900 5200 7700 5200
Wire Wire Line
	7700 5200 7700 4800
Wire Wire Line
	6900 5300 7800 5300
Wire Wire Line
	7800 5300 7800 4800
Wire Wire Line
	6900 5400 7900 5400
Wire Wire Line
	7900 5400 7900 4800
Wire Wire Line
	6900 5500 8000 5500
Wire Wire Line
	8000 5500 8000 4800
Wire Wire Line
	6900 5600 8100 5600
Wire Wire Line
	8100 5600 8100 4800
Wire Wire Line
	6900 5700 8200 5700
Wire Wire Line
	8200 5700 8200 4800
Wire Wire Line
	6900 5800 8300 5800
Wire Wire Line
	8300 5800 8300 4800
Wire Wire Line
	6900 5900 8400 5900
Wire Wire Line
	8400 5900 8400 4800
$Comp
L SWITCH_X_4 SW1
U 1 1 531B7F50
P 5250 3200
F 0 "SW1" H 4910 3580 50  0000 C CNN
F 1 "SWITCH_X_4" H 5100 3050 50  0000 C CNN
F 2 "~" H 5250 3200 60  0000 C CNN
F 3 "~" H 5250 3200 60  0000 C CNN
	1    5250 3200
	1    0    0    1   
$EndComp
$Comp
L SWITCH_X_4 SW2
U 1 1 531B7F61
P 5250 5200
F 0 "SW2" H 4910 5580 50  0000 C CNN
F 1 "SWITCH_X_4" H 5100 5050 50  0000 C CNN
F 2 "~" H 5250 5200 60  0000 C CNN
F 3 "~" H 5250 5200 60  0000 C CNN
	1    5250 5200
	1    0    0    1   
$EndComp
$Comp
L R R2
U 1 1 531B7F8E
P 5650 2950
F 0 "R2" V 5600 3050 50  0000 C CNN
F 1 "10k" V 5700 3050 50  0000 C CNN
F 2 "~" H 5650 2950 60  0000 C CNN
F 3 "~" H 5650 2950 60  0000 C CNN
	1    5650 2950
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 531B7FA7
P 5800 2950
F 0 "R4" V 5750 3050 50  0000 C CNN
F 1 "10k" V 5850 3050 50  0000 C CNN
F 2 "~" H 5800 2950 60  0000 C CNN
F 3 "~" H 5800 2950 60  0000 C CNN
	1    5800 2950
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 531B7FB6
P 5950 2950
F 0 "R6" V 5900 3050 50  0000 C CNN
F 1 "10k" V 6000 3050 50  0000 C CNN
F 2 "~" H 5950 2950 60  0000 C CNN
F 3 "~" H 5950 2950 60  0000 C CNN
	1    5950 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 3200 6200 3200
Wire Wire Line
	5400 3300 6200 3300
Wire Wire Line
	5400 3400 6200 3400
Wire Wire Line
	5650 3000 5650 3200
Connection ~ 5650 3200
Wire Wire Line
	5800 3000 5800 3300
Connection ~ 5800 3300
Wire Wire Line
	5950 3000 5950 3400
Connection ~ 5950 3400
Wire Wire Line
	5650 2700 5650 2600
Wire Wire Line
	5650 2600 5950 2600
Wire Wire Line
	5950 2600 5950 2700
Wire Wire Line
	5800 2500 5800 2700
Connection ~ 5800 2600
$Comp
L +5VD #PWR03
U 1 1 531B8194
P 5800 2500
F 0 "#PWR03" H 5800 2450 20  0001 C CNN
F 1 "+5VD" H 5800 2600 30  0000 C CNN
F 2 "" H 5800 2500 60  0000 C CNN
F 3 "" H 5800 2500 60  0000 C CNN
	1    5800 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3200 4950 3200
Wire Wire Line
	4900 3200 4900 3400
Wire Wire Line
	4900 3400 4950 3400
Wire Wire Line
	4950 3300 4900 3300
Connection ~ 4900 3300
Connection ~ 4900 3200
$Comp
L GND #PWR04
U 1 1 531B825B
P 4750 3200
F 0 "#PWR04" H 4750 3200 30  0001 C CNN
F 1 "GND" H 4750 3130 30  0001 C CNN
F 2 "" H 4750 3200 60  0000 C CNN
F 3 "" H 4750 3200 60  0000 C CNN
	1    4750 3200
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 531B82BC
P 5650 4950
F 0 "R3" V 5600 5050 50  0000 C CNN
F 1 "10k" V 5700 5050 50  0000 C CNN
F 2 "~" H 5650 4950 60  0000 C CNN
F 3 "~" H 5650 4950 60  0000 C CNN
	1    5650 4950
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 531B82C2
P 5800 4950
F 0 "R5" V 5750 5050 50  0000 C CNN
F 1 "10k" V 5850 5050 50  0000 C CNN
F 2 "~" H 5800 4950 60  0000 C CNN
F 3 "~" H 5800 4950 60  0000 C CNN
	1    5800 4950
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 531B82C8
P 5950 4950
F 0 "R7" V 5900 5050 50  0000 C CNN
F 1 "10k" V 6000 5050 50  0000 C CNN
F 2 "~" H 5950 4950 60  0000 C CNN
F 3 "~" H 5950 4950 60  0000 C CNN
	1    5950 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 5200 6200 5200
Wire Wire Line
	5400 5300 6200 5300
Wire Wire Line
	5400 5400 6200 5400
Wire Wire Line
	5650 5000 5650 5200
Connection ~ 5650 5200
Wire Wire Line
	5800 5000 5800 5300
Connection ~ 5800 5300
Wire Wire Line
	5950 5000 5950 5400
Connection ~ 5950 5400
Wire Wire Line
	5650 4700 5650 4600
Wire Wire Line
	5650 4600 5950 4600
Wire Wire Line
	5950 4600 5950 4700
Wire Wire Line
	5800 4500 5800 4700
Connection ~ 5800 4600
$Comp
L +5VD #PWR05
U 1 1 531B82DC
P 5800 4500
F 0 "#PWR05" H 5800 4450 20  0001 C CNN
F 1 "+5VD" H 5800 4600 30  0000 C CNN
F 2 "" H 5800 4500 60  0000 C CNN
F 3 "" H 5800 4500 60  0000 C CNN
	1    5800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5200 4950 5200
Wire Wire Line
	4900 5200 4900 5400
Wire Wire Line
	4900 5400 4950 5400
Wire Wire Line
	4950 5300 4900 5300
Connection ~ 4900 5300
Connection ~ 4900 5200
$Comp
L GND #PWR06
U 1 1 531B82FC
P 4750 5200
F 0 "#PWR06" H 4750 5200 30  0001 C CNN
F 1 "GND" H 4750 5130 30  0001 C CNN
F 2 "" H 4750 5200 60  0000 C CNN
F 3 "" H 4750 5200 60  0000 C CNN
	1    4750 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 4000 6550 4050
Wire Wire Line
	6550 3100 6550 3050
$Comp
L +5VD #PWR07
U 1 1 531B8602
P 6550 3050
F 0 "#PWR07" H 6550 3000 20  0001 C CNN
F 1 "+5VD" H 6550 3150 30  0000 C CNN
F 2 "" H 6550 3050 60  0000 C CNN
F 3 "" H 6550 3050 60  0000 C CNN
	1    6550 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 531B861B
P 6550 4050
F 0 "#PWR08" H 6550 4050 30  0001 C CNN
F 1 "GND" H 6550 3980 30  0001 C CNN
F 2 "" H 6550 4050 60  0000 C CNN
F 3 "" H 6550 4050 60  0000 C CNN
	1    6550 4050
	1    0    0    -1  
$EndComp
$Comp
L +5VD #PWR09
U 1 1 531B8634
P 6550 5050
F 0 "#PWR09" H 6550 5000 20  0001 C CNN
F 1 "+5VD" H 6550 5150 30  0000 C CNN
F 2 "" H 6550 5050 60  0000 C CNN
F 3 "" H 6550 5050 60  0000 C CNN
	1    6550 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 531B864D
P 6550 6050
F 0 "#PWR010" H 6550 6050 30  0001 C CNN
F 1 "GND" H 6550 5980 30  0001 C CNN
F 2 "" H 6550 6050 60  0000 C CNN
F 3 "" H 6550 6050 60  0000 C CNN
	1    6550 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 6000 6550 6050
Wire Wire Line
	6550 5050 6550 5100
$Comp
L +5VD #PWR011
U 1 1 531B87AE
P 3250 2100
F 0 "#PWR011" H 3250 2050 20  0001 C CNN
F 1 "+5VD" H 3250 2200 30  0000 C CNN
F 2 "" H 3250 2100 60  0000 C CNN
F 3 "" H 3250 2100 60  0000 C CNN
	1    3250 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 531B87BD
P 3250 3000
F 0 "#PWR012" H 3250 3000 30  0001 C CNN
F 1 "GND" H 3250 2930 30  0001 C CNN
F 2 "" H 3250 3000 60  0000 C CNN
F 3 "" H 3250 3000 60  0000 C CNN
	1    3250 3000
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 531B87D6
P 3250 2250
F 0 "R1" V 3200 2350 50  0000 C CNN
F 1 "1k" V 3300 2350 50  0000 C CNN
F 2 "~" H 3250 2250 60  0000 C CNN
F 3 "~" H 3250 2250 60  0000 C CNN
	1    3250 2250
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 531B87EF
P 3250 2700
F 0 "D1" H 3250 2800 50  0000 C CNN
F 1 "LED" H 3250 2600 50  0000 C CNN
F 2 "~" H 3250 2700 60  0000 C CNN
F 3 "~" H 3250 2700 60  0000 C CNN
	1    3250 2700
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 531B8812
P 3600 2450
F 0 "C1" H 3650 2550 50  0000 L CNN
F 1 "100n" H 3650 2350 50  0000 L CNN
F 2 "~" H 3600 2450 60  0000 C CNN
F 3 "~" H 3600 2450 60  0000 C CNN
	1    3600 2450
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 531B8821
P 3950 2450
F 0 "C2" H 4000 2550 50  0000 L CNN
F 1 "100n" H 4000 2350 50  0000 L CNN
F 2 "~" H 3950 2450 60  0000 C CNN
F 3 "~" H 3950 2450 60  0000 C CNN
	1    3950 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2550 3250 2500
Wire Wire Line
	3600 2600 3600 2900
Wire Wire Line
	3250 2900 3950 2900
Wire Wire Line
	3250 2850 3250 3000
Connection ~ 3250 2900
Wire Wire Line
	3250 2100 3250 2200
Wire Wire Line
	3250 2150 3950 2150
Wire Wire Line
	3600 2150 3600 2300
Connection ~ 3250 2150
Wire Wire Line
	3950 2150 3950 2300
Connection ~ 3600 2150
Wire Wire Line
	3950 2900 3950 2600
Connection ~ 3600 2900
Wire Wire Line
	3400 3700 6200 3700
$EndSCHEMATC
