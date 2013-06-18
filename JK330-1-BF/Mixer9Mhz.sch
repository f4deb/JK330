EESchema Schematic File Version 2
LIBS:power
LIBS:CEN-SCHEMA
LIBS:JK330-1-BF-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title "JK330 "
Date "18 jun 2013"
Rev "V0.10"
Comp "F4DEB 2013"
Comment1 "CARTE FI 9Mhz FILTRE BF"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4275 3800 0    60   Input ~ 0
OL9MHZ
Wire Wire Line
	4275 3800 4750 3800
Wire Wire Line
	4425 3000 4325 3000
Connection ~ 5025 3000
Wire Wire Line
	5125 3525 5225 3525
Wire Wire Line
	5225 3525 5225 3350
Wire Wire Line
	5350 3800 5600 3800
Connection ~ 6150 4500
Wire Wire Line
	6150 4300 6150 4650
Wire Wire Line
	6150 2700 6150 2550
Wire Wire Line
	6650 4500 6950 4500
Wire Wire Line
	6650 3800 6750 3800
Wire Wire Line
	6150 3150 6350 3150
Wire Wire Line
	6150 4100 6150 3500
Connection ~ 6150 3800
Wire Wire Line
	6350 4500 6150 4500
Wire Wire Line
	6650 3150 6950 3150
Wire Wire Line
	6350 3800 5900 3800
Wire Wire Line
	6150 3300 6150 3000
Connection ~ 6150 3150
Wire Wire Line
	6150 4950 6150 5100
Wire Wire Line
	4925 3350 4925 3525
Wire Wire Line
	4925 3525 5025 3525
Wire Wire Line
	5025 2700 5025 3250
Wire Wire Line
	4625 3000 5025 3000
Wire Wire Line
	5025 2500 5025 2350
Text HLabel 4325 3000 0    60   Input ~ 0
AFE
Text HLabel 5025 2350 1    60   Input ~ 0
AFR
$Comp
L CP C1
U 1 1 514E2FFB
P 5025 2600
F 0 "C1" H 5075 2700 50  0000 L CNN
F 1 "10U" H 5075 2500 50  0000 L CNN
F 2 "" H 5025 2600 60  0001 C CNN
F 3 "" H 5025 2600 60  0001 C CNN
	1    5025 2600
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 514E2FF7
P 4525 3000
F 0 "C2" V 4625 3075 50  0000 L CNN
F 1 "10U" V 4625 2825 50  0000 L CNN
F 2 "" H 4525 3000 60  0001 C CNN
F 3 "" H 4525 3000 60  0001 C CNN
	1    4525 3000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR20
U 1 1 514E2EB7
P 6750 3800
F 0 "#PWR20" H 6750 3800 30  0001 C CNN
F 1 "GND" H 6750 3730 30  0001 C CNN
F 2 "" H 6750 3800 60  0001 C CNN
F 3 "" H 6750 3800 60  0001 C CNN
	1    6750 3800
	0    -1   -1   0   
$EndComp
Text HLabel 6150 5100 3    60   Input ~ 0
+12VRX
Text HLabel 6150 2550 1    60   Input ~ 0
+12VTX
$Comp
L RVAR RVAR1
U 1 1 514E2DD7
P 5175 3350
F 0 "RVAR1" V 5125 3075 50  0000 C CNN
F 1 "100" V 5125 3425 50  0000 C CNN
F 2 "" H 5175 3350 60  0001 C CNN
F 3 "" H 5175 3350 60  0001 C CNN
	1    5175 3350
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 514E2D7C
P 6150 4700
F 0 "R3" H 6050 4700 50  0000 C CNN
F 1 "1k" H 6050 4600 50  0000 C CNN
F 2 "" H 6150 4700 60  0001 C CNN
F 3 "" H 6150 4700 60  0001 C CNN
	1    6150 4700
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 514E2D6E
P 6150 2750
F 0 "R1" H 6050 2700 50  0000 C CNN
F 1 "1k" H 6050 2600 50  0000 C CNN
F 2 "" H 6150 2750 60  0001 C CNN
F 3 "" H 6150 2750 60  0001 C CNN
	1    6150 2750
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 514E2D5C
P 5750 3800
F 0 "C4" V 5800 3900 50  0000 L CNN
F 1 "1n" V 5800 3650 50  0000 L CNN
F 2 "" H 5750 3800 60  0001 C CNN
F 3 "" H 5750 3800 60  0001 C CNN
	1    5750 3800
	0    -1   -1   0   
$EndComp
$Comp
L SBL-1 MX1
U 1 1 514E2D51
P 5500 3500
F 0 "MX1" H 6300 3350 60  0000 C CNN
F 1 "SBL-1" H 6350 3050 60  0000 C CNN
F 2 "" H 5500 3500 60  0001 C CNN
F 3 "" H 5500 3500 60  0001 C CNN
	1    5500 3500
	-1   0    0    -1  
$EndComp
Text HLabel 6950 4500 2    60   Input ~ 0
RX9MHZ
Text HLabel 6950 3150 2    60   Input ~ 0
TX9MHZ
$Comp
L R R2
U 1 1 514E29B3
P 6400 3800
F 0 "R2" V 6450 3750 50  0000 C CNN
F 1 "1k" V 6450 3600 50  0000 C CNN
F 2 "" H 6400 3800 60  0001 C CNN
F 3 "" H 6400 3800 60  0001 C CNN
	1    6400 3800
	0    -1   -1   0   
$EndComp
$Comp
L C C5
U 1 1 514E299B
P 6500 4500
F 0 "C5" V 6550 4600 50  0000 L CNN
F 1 "1n" V 6550 4350 50  0000 L CNN
F 2 "" H 6500 4500 60  0001 C CNN
F 3 "" H 6500 4500 60  0001 C CNN
	1    6500 4500
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 514E2995
P 6500 3150
F 0 "C3" V 6550 3250 50  0000 L CNN
F 1 "1n" V 6550 3000 50  0000 L CNN
F 2 "" H 6500 3150 60  0001 C CNN
F 3 "" H 6500 3150 60  0001 C CNN
	1    6500 3150
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D1
U 1 1 514E2901
P 6150 3400
F 0 "D1" V 6100 3300 40  0000 C CNN
F 1 "MA4P1250" V 6250 3200 40  0000 C CNN
F 2 "" H 6150 3400 60  0001 C CNN
F 3 "" H 6150 3400 60  0001 C CNN
	1    6150 3400
	0    1    1    0   
$EndComp
$Comp
L DIODE D2
U 1 1 514E28F2
P 6150 4200
F 0 "D2" V 6200 4300 40  0000 C CNN
F 1 "MA4P1250" V 6050 4400 40  0000 C CNN
F 2 "" H 6150 4200 60  0001 C CNN
F 3 "" H 6150 4200 60  0001 C CNN
	1    6150 4200
	0    -1   -1   0   
$EndComp
Text Notes 4900 3500 0    60   ~ 0
Multitour
Wire Wire Line
	4900 4150 4900 4200
Wire Wire Line
	4900 4200 5200 4200
Wire Wire Line
	5200 4200 5200 4150
Wire Wire Line
	5000 4150 5000 4300
Connection ~ 5000 4200
Wire Wire Line
	5100 4150 5100 4200
Connection ~ 5100 4200
$Comp
L GND #PWR19
U 1 1 51AE4B7A
P 5000 4300
F 0 "#PWR19" H 5000 4300 30  0001 C CNN
F 1 "GND" H 5000 4230 30  0001 C CNN
F 2 "" H 5000 4300 60  0000 C CNN
F 3 "" H 5000 4300 60  0000 C CNN
	1    5000 4300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
