EESchema Schematic File Version 2  date 16/06/2013 19:24:33
LIBS:power
LIBS:CEN-SCHEMA
LIBS:JK330-1-BF-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title "F4DEB"
Date "16 jun 2013"
Rev "V 3.00"
Comp "RACKANOUS"
Comment1 "Carte  Audio"
Comment2 "FILTRE NOTCH"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 3100 3850 0    60   ~ 0
U9
Text Notes 2750 3850 0    60   ~ 0
U7
Text Notes 2400 3850 0    60   ~ 0
U6
Text Label 1300 6000 0    60   ~ 0
D7
Text Label 1300 5900 0    60   ~ 0
D6
Text Label 1300 5800 0    60   ~ 0
D5
Text Label 1300 5700 0    60   ~ 0
D4
Text Label 1300 5600 0    60   ~ 0
D3
Text Label 1300 5500 0    60   ~ 0
D2
Text Label 1300 5400 0    60   ~ 0
D1
Text Label 1300 5300 0    60   ~ 0
D0
Text HLabel 10850 2250 2    60   Input ~ 0
AFRFN
Text HLabel 4650 2800 0    50   Input ~ 0
AFRF
Text HLabel 5300 6950 3    50   Input ~ 0
OSC
Text HLabel 1250 6200 0    50   Input ~ 0
CSFN
Text HLabel 900  4950 0    50   Input ~ 0
D[0..7]
$Comp
L GND #PWR77
U 1 1 49973DEE
P 2900 4300
F 0 "#PWR77" H 2900 4300 30  0001 C CNN
F 1 "GND" H 2900 4230 30  0001 C CNN
F 2 "" H 2900 4300 60  0001 C CNN
F 3 "" H 2900 4300 60  0001 C CNN
	1    2900 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR100
U 1 1 4994980F
P 9150 2350
F 0 "#PWR100" H 9150 2350 30  0001 C CNN
F 1 "GND" H 9150 2280 30  0001 C CNN
F 2 "" H 9150 2350 60  0001 C CNN
F 3 "" H 9150 2350 60  0001 C CNN
	1    9150 2350
	0    1    1    0   
$EndComp
$Comp
L R R28
U 1 1 4994977B
P 8650 2150
F 0 "R28" V 8700 2200 50  0000 C CNN
F 1 "11k5" V 8700 2000 50  0000 C CNN
F 2 "" H 8650 2150 60  0001 C CNN
F 3 "" H 8650 2150 60  0001 C CNN
	1    8650 2150
	0    -1   -1   0   
$EndComp
$Comp
L R R27
U 1 1 49949778
P 9650 1750
F 0 "R27" V 9550 1550 50  0000 C CNN
F 1 "11k5" V 9550 1800 50  0000 C CNN
F 2 "" H 9650 1750 60  0001 C CNN
F 3 "" H 9650 1750 60  0001 C CNN
	1    9650 1750
	0    1    1    0   
$EndComp
$Comp
L R R26
U 1 1 49949776
P 8850 1750
F 0 "R26" V 8750 1550 50  0000 C CNN
F 1 "11.5k" V 8750 1800 50  0000 C CNN
F 2 "" H 8850 1750 60  0001 C CNN
F 3 "" H 8850 1750 60  0001 C CNN
	1    8850 1750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR92
U 1 1 49949734
P 6400 1600
F 0 "#PWR92" H 6400 1600 30  0001 C CNN
F 1 "GND" H 6400 1530 30  0001 C CNN
F 2 "" H 6400 1600 60  0001 C CNN
F 3 "" H 6400 1600 60  0001 C CNN
	1    6400 1600
	0    1    1    0   
$EndComp
$Comp
L R R25
U 1 1 499496DB
P 7550 1500
F 0 "R25" V 7500 1300 50  0000 C CNN
F 1 "11.5k" V 7500 1550 50  0000 C CNN
F 2 "" H 7550 1500 60  0001 C CNN
F 3 "" H 7550 1500 60  0001 C CNN
	1    7550 1500
	0    1    1    0   
$EndComp
$Comp
L R R23
U 1 1 499496CF
P 6950 1000
F 0 "R23" V 6900 800 50  0000 C CNN
F 1 "11.5k" V 6900 1050 50  0000 C CNN
F 2 "" H 6950 1000 60  0001 C CNN
F 3 "" H 6950 1000 60  0001 C CNN
	1    6950 1000
	0    1    1    0   
$EndComp
$Comp
L R R24
U 1 1 499496CD
P 6300 1400
F 0 "R24" V 6250 1200 50  0000 C CNN
F 1 "11.5k" V 6250 1450 50  0000 C CNN
F 2 "" H 6300 1400 60  0001 C CNN
F 3 "" H 6300 1400 60  0001 C CNN
	1    6300 1400
	0    1    1    0   
$EndComp
$Comp
L R R22
U 1 1 499496C8
P 6300 1000
F 0 "R22" V 6250 800 50  0000 C CNN
F 1 "11.5k" V 6250 1050 50  0000 C CNN
F 2 "" H 6300 1000 60  0001 C CNN
F 3 "" H 6300 1000 60  0001 C CNN
	1    6300 1000
	0    1    1    0   
$EndComp
$Comp
L MC33172 U6
U 2 1 4994968B
P 9550 2250
F 0 "U6" H 9550 2500 60  0000 L CNN
F 1 "MC33172" H 9400 2000 60  0000 L CNN
F 2 "" H 9550 2250 60  0001 C CNN
F 3 "" H 9550 2250 60  0001 C CNN
	2    9550 2250
	1    0    0    1   
$EndComp
$Comp
L MC33172 U6
U 1 1 4994967F
P 6850 1500
F 0 "U6" H 6650 1250 60  0000 L CNN
F 1 "MC33172" H 6350 1800 60  0000 L CNN
F 2 "" H 6850 1500 60  0001 C CNN
F 3 "" H 6850 1500 60  0001 C CNN
	1    6850 1500
	1    0    0    1   
$EndComp
$Comp
L GND #PWR98
U 1 1 499495EF
P 7950 3800
F 0 "#PWR98" H 7950 3800 30  0001 C CNN
F 1 "GND" H 7950 3730 30  0001 C CNN
F 2 "" H 7950 3800 60  0001 C CNN
F 3 "" H 7950 3800 60  0001 C CNN
	1    7950 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR95
U 1 1 499493B1
P 7100 3400
F 0 "#PWR95" H 7100 3400 30  0001 C CNN
F 1 "GND" H 7100 3330 30  0001 C CNN
F 2 "" H 7100 3400 60  0001 C CNN
F 3 "" H 7100 3400 60  0001 C CNN
	1    7100 3400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR91
U 1 1 499493AD
P 5950 3400
F 0 "#PWR91" H 5950 3400 30  0001 C CNN
F 1 "GND" H 5950 3330 30  0001 C CNN
F 2 "" H 5950 3400 60  0001 C CNN
F 3 "" H 5950 3400 60  0001 C CNN
	1    5950 3400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR86
U 1 1 49949391
P 5300 3800
F 0 "#PWR86" H 5300 3800 30  0001 C CNN
F 1 "GND" H 5300 3730 30  0001 C CNN
F 2 "" H 5300 3800 60  0001 C CNN
F 3 "" H 5300 3800 60  0001 C CNN
	1    5300 3800
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 49949374
P 5550 3350
F 0 "C19" H 5600 3450 50  0000 L CNN
F 1 "100n" H 5600 3250 50  0000 L CNN
F 2 "" H 5550 3350 60  0001 C CNN
F 3 "" H 5550 3350 60  0001 C CNN
	1    5550 3350
	1    0    0    -1  
$EndComp
$Comp
L CP C18
U 1 1 49949373
P 5300 3300
F 0 "C18" H 5350 3400 50  0000 L CNN
F 1 "CP" H 5350 3200 50  0000 L CNN
F 2 "" H 5300 3300 60  0001 C CNN
F 3 "" H 5300 3300 60  0001 C CNN
	1    5300 3300
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 49949339
P 8200 3450
F 0 "C21" H 8250 3550 50  0000 L CNN
F 1 "100n" H 8250 3350 50  0000 L CNN
F 2 "" H 8200 3450 60  0001 C CNN
F 3 "" H 8200 3450 60  0001 C CNN
	1    8200 3450
	1    0    0    -1  
$EndComp
$Comp
L CP C20
U 1 1 4994932A
P 7950 3400
F 0 "C20" H 8000 3500 50  0000 L CNN
F 1 "CP" H 8000 3300 50  0000 L CNN
F 2 "" H 7950 3400 60  0001 C CNN
F 3 "" H 7950 3400 60  0001 C CNN
	1    7950 3400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR97
U 1 1 5150BF93
P 7150 3050
F 0 "#PWR97" H 7150 3050 30  0001 C CNN
F 1 "GND" H 7150 2980 30  0001 C CNN
F 2 "" H 7150 3050 60  0001 C CNN
F 3 "" H 7150 3050 60  0001 C CNN
	1    7150 3050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR96
U 1 1 5150BF92
P 7150 2950
F 0 "#PWR96" H 7150 2950 30  0001 C CNN
F 1 "GND" H 7150 2880 30  0001 C CNN
F 2 "" H 7150 2950 60  0001 C CNN
F 3 "" H 7150 2950 60  0001 C CNN
	1    7150 2950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR90
U 1 1 5150BF91
P 5900 2950
F 0 "#PWR90" H 5900 2950 30  0001 C CNN
F 1 "GND" H 5900 2880 30  0001 C CNN
F 2 "" H 5900 2950 60  0001 C CNN
F 3 "" H 5900 2950 60  0001 C CNN
	1    5900 2950
	0    1    1    0   
$EndComp
$Comp
L R R29
U 1 1 499491D7
P 10250 2250
F 0 "R29" V 10200 2050 50  0000 C CNN
F 1 "R" V 10200 2200 50  0000 C CNN
F 2 "" H 10250 2250 60  0001 C CNN
F 3 "" H 10250 2250 60  0001 C CNN
	1    10250 2250
	0    1    1    0   
$EndComp
$Comp
L R R35
U 1 1 499491D4
P 7800 2650
F 0 "R35" V 7750 2450 50  0000 C CNN
F 1 "11.5k" V 7750 2650 50  0000 C CNN
F 2 "" H 7800 2650 60  0001 C CNN
F 3 "" H 7800 2650 60  0001 C CNN
	1    7800 2650
	0    1    1    0   
$EndComp
$Comp
L R R33
U 1 1 499491D1
P 7800 2550
F 0 "R33" V 7750 2350 50  0000 C CNN
F 1 "100k" V 7750 2550 50  0000 C CNN
F 2 "" H 7800 2550 60  0001 C CNN
F 3 "" H 7800 2550 60  0001 C CNN
	1    7800 2550
	0    1    1    0   
$EndComp
$Comp
L R R31
U 1 1 499491CC
P 7800 2450
F 0 "R31" V 7750 2250 50  0000 C CNN
F 1 "11.5k" V 7750 2450 50  0000 C CNN
F 2 "" H 7800 2450 60  0001 C CNN
F 3 "" H 7800 2450 60  0001 C CNN
	1    7800 2450
	0    1    1    0   
$EndComp
$Comp
L R R36
U 1 1 499491C1
P 5100 2800
F 0 "R36" V 5050 2600 50  0000 C CNN
F 1 "11.5k" V 5050 2800 50  0000 C CNN
F 2 "" H 5100 2800 60  0001 C CNN
F 3 "" H 5100 2800 60  0001 C CNN
	1    5100 2800
	0    1    1    0   
$EndComp
$Comp
L R R32
U 1 1 499491B9
P 5550 2550
F 0 "R32" V 5500 2350 50  0000 C CNN
F 1 "100k" V 5500 2600 50  0000 C CNN
F 2 "" H 5550 2550 60  0001 C CNN
F 3 "" H 5550 2550 60  0001 C CNN
	1    5550 2550
	0    1    1    0   
$EndComp
$Comp
L R R34
U 1 1 499491AC
P 5550 2650
F 0 "R34" V 5500 2450 50  0000 C CNN
F 1 "11.5k" V 5500 2700 50  0000 C CNN
F 2 "" H 5550 2650 60  0001 C CNN
F 3 "" H 5550 2650 60  0001 C CNN
	1    5550 2650
	0    1    1    0   
$EndComp
$Comp
L R R30
U 1 1 499491A8
P 5550 2450
F 0 "R30" V 5500 2250 50  0000 C CNN
F 1 "11.5k" V 5500 2500 50  0000 C CNN
F 2 "" H 5550 2450 60  0001 C CNN
F 3 "" H 5550 2450 60  0001 C CNN
	1    5550 2450
	0    1    1    0   
$EndComp
$Comp
L MF10 U7
U 1 1 49949197
P 6200 2250
F 0 "U7" H 6200 2350 60  0000 C CNN
F 1 "MF10" H 6200 2250 60  0000 C CNN
F 2 "" H 6200 2250 60  0001 C CNN
F 3 "" H 6200 2250 60  0001 C CNN
	1    6200 2250
	1    0    0    -1  
$EndComp
$Comp
L 74HC74 U4
U 2 1 5150BF86
P 5950 5950
F 0 "U4" H 6550 6150 60  0000 C CNN
F 1 "74HC74" H 6100 6150 60  0000 C CNN
F 2 "" H 5950 5950 60  0001 C CNN
F 3 "" H 5950 5950 60  0001 C CNN
	2    5950 5950
	1    0    0    1   
$EndComp
$Comp
L GND #PWR75
U 1 1 5150BF85
P 2050 6600
F 0 "#PWR75" H 2050 6600 30  0001 C CNN
F 1 "GND" H 2050 6530 30  0001 C CNN
F 2 "" H 2050 6600 60  0001 C CNN
F 3 "" H 2050 6600 60  0001 C CNN
	1    2050 6600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR73
U 1 1 49948D9E
P 1500 6300
F 0 "#PWR73" H 1500 6300 30  0001 C CNN
F 1 "GND" H 1500 6230 30  0001 C CNN
F 2 "" H 1500 6300 60  0001 C CNN
F 3 "" H 1500 6300 60  0001 C CNN
	1    1500 6300
	0    1    1    0   
$EndComp
Entry Wire Line
	1150 5200 1250 5300
Entry Wire Line
	1150 5300 1250 5400
Entry Wire Line
	1150 5400 1250 5500
Entry Wire Line
	1150 5500 1250 5600
Entry Wire Line
	1150 5600 1250 5700
Entry Wire Line
	1150 5700 1250 5800
Entry Wire Line
	1150 5800 1250 5900
Entry Wire Line
	1150 5900 1250 6000
$Comp
L GND #PWR84
U 1 1 49935208
P 4800 4650
F 0 "#PWR84" H 4800 4650 30  0001 C CNN
F 1 "GND" H 4800 4580 30  0001 C CNN
F 2 "" H 4800 4650 60  0001 C CNN
F 3 "" H 4800 4650 60  0001 C CNN
	1    4800 4650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR87
U 1 1 499351D8
P 5350 6100
F 0 "#PWR87" H 5350 6100 30  0001 C CNN
F 1 "GND" H 5350 6030 30  0001 C CNN
F 2 "" H 5350 6100 60  0001 C CNN
F 3 "" H 5350 6100 60  0001 C CNN
	1    5350 6100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR79
U 1 1 5150BF81
P 4100 4850
F 0 "#PWR79" H 4100 4850 30  0001 C CNN
F 1 "GND" H 4100 4780 30  0001 C CNN
F 2 "" H 4100 4850 60  0001 C CNN
F 3 "" H 4100 4850 60  0001 C CNN
	1    4100 4850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR80
U 1 1 4993519A
P 4100 6700
F 0 "#PWR80" H 4100 6700 30  0001 C CNN
F 1 "GND" H 4100 6630 30  0001 C CNN
F 2 "" H 4100 6700 60  0001 C CNN
F 3 "" H 4100 6700 60  0001 C CNN
	1    4100 6700
	1    0    0    -1  
$EndComp
$Comp
L 74HC4059 U8
U 1 1 499350DD
P 4700 4650
F 0 "U8" H 5150 4050 60  0000 C CNN
F 1 "74HC4059" H 5350 4200 60  0000 C CNN
F 2 "" H 4700 4650 60  0001 C CNN
F 3 "" H 4700 4650 60  0001 C CNN
	1    4700 4650
	1    0    0    -1  
$EndComp
$Comp
L 74HC377 U9
U 1 1 5150BF7E
P 1600 5300
F 0 "U9" H 1800 6000 60  0000 C CNN
F 1 "74HC377" H 1700 5500 60  0000 C CNN
F 2 "" H 1600 5300 60  0001 C CNN
F 3 "" H 1600 5300 60  0001 C CNN
	1    1600 5300
	1    0    0    -1  
$EndComp
$Comp
L C C24
U 1 1 49934E01
P 3250 3950
F 0 "C24" H 3300 4050 50  0000 L CNN
F 1 "100n" H 3300 3850 50  0000 L CNN
F 2 "" H 3250 3950 60  0001 C CNN
F 3 "" H 3250 3950 60  0001 C CNN
	1    3250 3950
	1    0    0    -1  
$EndComp
$Comp
L C C23
U 1 1 49934DFF
P 2900 3950
F 0 "C23" H 2950 4050 50  0000 L CNN
F 1 "100n" H 2950 3850 50  0000 L CNN
F 2 "" H 2900 3950 60  0001 C CNN
F 3 "" H 2900 3950 60  0001 C CNN
	1    2900 3950
	1    0    0    -1  
$EndComp
$Comp
L C C22
U 1 1 49934DFD
P 2550 3950
F 0 "C22" H 2600 4050 50  0000 L CNN
F 1 "100n" H 2600 3850 50  0000 L CNN
F 2 "" H 2550 3950 60  0001 C CNN
F 3 "" H 2550 3950 60  0001 C CNN
	1    2550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3950 6000 3550
Wire Wire Line
	4600 4800 4600 4650
Wire Wire Line
	5150 3150 6050 3150
Wire Wire Line
	5550 3650 5300 3650
Wire Wire Line
	2900 4100 2900 4300
Connection ~ 2900 4200
Wire Wire Line
	3250 3700 3250 3800
Wire Wire Line
	2550 3700 2550 3800
Connection ~ 9900 2250
Wire Wire Line
	9900 1750 9900 2250
Wire Wire Line
	9700 1750 9900 1750
Wire Wire Line
	9250 2350 9150 2350
Connection ~ 5750 2650
Wire Wire Line
	5750 1000 5750 2650
Wire Wire Line
	7900 1500 7900 2800
Wire Wire Line
	7600 1500 7900 1500
Connection ~ 7450 2450
Wire Wire Line
	7450 2150 7450 2450
Wire Wire Line
	8600 2150 7450 2150
Wire Wire Line
	8900 2150 9250 2150
Wire Wire Line
	6850 1700 6850 1750
Connection ~ 7200 1500
Wire Wire Line
	7200 1000 7000 1000
Wire Wire Line
	7200 1500 7200 1000
Connection ~ 6450 1000
Connection ~ 6450 1400
Wire Wire Line
	6450 1000 6450 1400
Wire Wire Line
	6550 1600 6400 1600
Wire Wire Line
	6050 1000 5750 1000
Wire Wire Line
	7000 2650 7550 2650
Wire Wire Line
	7000 2450 7550 2450
Wire Wire Line
	5600 2650 6050 2650
Wire Wire Line
	5600 2450 6050 2450
Connection ~ 7950 3700
Wire Wire Line
	7950 3500 7950 3800
Connection ~ 7000 5650
Wire Wire Line
	7000 5650 6850 5650
Wire Wire Line
	5300 6250 5300 6950
Wire Wire Line
	7000 3950 6000 3950
Wire Wire Line
	7000 3550 7000 6500
Wire Wire Line
	7000 3400 7100 3400
Connection ~ 5950 3150
Wire Wire Line
	5950 3250 5950 3150
Wire Wire Line
	6050 3250 5950 3250
Wire Wire Line
	4400 3050 6050 3050
Connection ~ 7950 3250
Wire Wire Line
	7950 3250 7950 3300
Wire Wire Line
	7000 2950 7150 2950
Connection ~ 7900 2550
Wire Wire Line
	7900 2550 7850 2550
Connection ~ 5250 2650
Wire Wire Line
	5250 2650 5300 2650
Connection ~ 5250 2800
Wire Wire Line
	5650 5850 5650 6500
Wire Wire Line
	5950 5850 5650 5850
Wire Wire Line
	5950 5950 5850 5950
Wire Wire Line
	2050 6500 2050 6600
Wire Bus Line
	1100 4950 900  4950
Wire Bus Line
	1150 5000 1100 4950
Wire Wire Line
	1250 6200 1600 6200
Wire Wire Line
	1250 6000 1600 6000
Wire Wire Line
	1250 5800 1600 5800
Wire Wire Line
	1250 5600 1600 5600
Wire Wire Line
	1600 5400 1250 5400
Wire Wire Line
	5200 6100 5350 6100
Connection ~ 4800 6900
Wire Wire Line
	4800 6800 4800 6900
Connection ~ 4100 5150
Wire Wire Line
	4100 5150 4200 5150
Wire Wire Line
	4100 4850 4100 5350
Wire Wire Line
	4100 5350 4200 5350
Connection ~ 4100 6450
Wire Wire Line
	4100 6450 4200 6450
Wire Wire Line
	4100 6250 4200 6250
Wire Wire Line
	2500 6050 4200 6050
Wire Wire Line
	2500 5850 4200 5850
Wire Wire Line
	2500 5650 4200 5650
Wire Wire Line
	2500 5450 4200 5450
Wire Wire Line
	4200 5550 2500 5550
Wire Wire Line
	4200 5750 2500 5750
Wire Wire Line
	4200 5950 2500 5950
Wire Wire Line
	4200 6350 4100 6350
Connection ~ 4100 6350
Wire Wire Line
	4100 6550 4200 6550
Connection ~ 4100 6550
Wire Wire Line
	4200 5050 4100 5050
Connection ~ 4100 5050
Wire Wire Line
	4200 5250 4100 5250
Connection ~ 4100 5250
Wire Wire Line
	4700 6900 4900 6900
Wire Wire Line
	4900 6900 4900 6800
Connection ~ 4700 6900
Wire Wire Line
	1600 5300 1250 5300
Wire Wire Line
	1600 5500 1250 5500
Wire Wire Line
	1250 5700 1600 5700
Wire Wire Line
	1250 5900 1600 5900
Wire Wire Line
	1500 6300 1600 6300
Wire Bus Line
	1150 5000 1150 5900
Wire Wire Line
	2050 4950 2050 5100
Wire Wire Line
	5200 6250 5300 6250
Wire Wire Line
	5200 5700 5950 5700
Wire Wire Line
	5950 5600 5850 5600
Wire Wire Line
	5250 2450 5300 2450
Wire Wire Line
	5250 2450 5250 2800
Wire Wire Line
	5250 2550 5300 2550
Connection ~ 5250 2550
Wire Wire Line
	7900 2650 7850 2650
Connection ~ 7900 2650
Wire Wire Line
	7900 2450 7850 2450
Connection ~ 7900 2450
Wire Wire Line
	6050 2950 5900 2950
Wire Wire Line
	7000 3050 7150 3050
Wire Wire Line
	7000 3250 8400 3250
Wire Wire Line
	8200 3300 8200 3250
Connection ~ 8200 3250
Connection ~ 5300 3150
Wire Wire Line
	5300 3200 5300 3150
Wire Wire Line
	5550 3200 5550 3150
Connection ~ 5550 3150
Wire Wire Line
	5550 3500 5550 3650
Wire Wire Line
	7100 3150 7000 3150
Wire Wire Line
	7100 3250 7100 3150
Connection ~ 7100 3250
Wire Wire Line
	6050 3400 5950 3400
Wire Wire Line
	6000 3550 6050 3550
Wire Wire Line
	5650 6500 7000 6500
Wire Wire Line
	8200 3700 7950 3700
Wire Wire Line
	8200 3600 8200 3700
Wire Wire Line
	5600 2550 6050 2550
Wire Wire Line
	5150 2800 6050 2800
Wire Wire Line
	7550 2550 7000 2550
Wire Wire Line
	7900 2800 7000 2800
Wire Wire Line
	6350 1400 6550 1400
Wire Wire Line
	5950 1400 6050 1400
Wire Wire Line
	6350 1000 6700 1000
Wire Wire Line
	7150 1500 7300 1500
Wire Wire Line
	6850 1300 6850 1250
Wire Wire Line
	8900 1750 9400 1750
Wire Wire Line
	9000 2150 9000 1750
Connection ~ 9000 1750
Connection ~ 9000 2150
Wire Wire Line
	7200 1750 8600 1750
Wire Wire Line
	7200 2650 7200 1750
Connection ~ 7200 2650
Wire Wire Line
	5950 2450 5950 1400
Connection ~ 5950 2450
Wire Wire Line
	9850 2250 10000 2250
Wire Wire Line
	10300 2250 10400 2250
Wire Wire Line
	2550 4200 2550 4100
Connection ~ 2900 3700
Wire Wire Line
	3250 4200 3250 4100
Wire Wire Line
	2900 3600 2900 3800
Wire Wire Line
	5300 3400 5300 3800
Connection ~ 5300 3650
Wire Wire Line
	4850 2800 4650 2800
Wire Wire Line
	2550 3700 3250 3700
Wire Wire Line
	2550 4200 3250 4200
Wire Wire Line
	4800 4800 4800 4650
Wire Wire Line
	4700 6800 4700 7000
Connection ~ 7000 3950
Wire Wire Line
	4100 6250 4100 6700
Wire Wire Line
	2500 6150 4200 6150
$Comp
L R R37
U 1 1 514F4905
P 2900 5100
F 0 "R37" V 2850 5200 50  0000 C CNN
F 1 "R" V 2950 5200 50  0000 C CNN
F 2 "" H 2900 5100 60  0000 C CNN
F 3 "" H 2900 5100 60  0000 C CNN
	1    2900 5100
	1    0    0    -1  
$EndComp
$Comp
L R R38
U 1 1 514F4912
P 3000 5100
F 0 "R38" V 2950 5200 50  0000 C CNN
F 1 "R" V 3050 5200 50  0000 C CNN
F 2 "" H 3000 5100 60  0000 C CNN
F 3 "" H 3000 5100 60  0000 C CNN
	1    3000 5100
	1    0    0    -1  
$EndComp
$Comp
L R R39
U 1 1 514F4918
P 3100 5100
F 0 "R39" V 3050 5200 50  0000 C CNN
F 1 "R" V 3150 5200 50  0000 C CNN
F 2 "" H 3100 5100 60  0000 C CNN
F 3 "" H 3100 5100 60  0000 C CNN
	1    3100 5100
	1    0    0    -1  
$EndComp
$Comp
L R R40
U 1 1 514F491E
P 3200 5100
F 0 "R40" V 3150 5200 50  0000 C CNN
F 1 "R" V 3250 5200 50  0000 C CNN
F 2 "" H 3200 5100 60  0000 C CNN
F 3 "" H 3200 5100 60  0000 C CNN
	1    3200 5100
	1    0    0    -1  
$EndComp
$Comp
L R R41
U 1 1 514F4924
P 3300 5100
F 0 "R41" V 3250 5200 50  0000 C CNN
F 1 "R" V 3350 5200 50  0000 C CNN
F 2 "" H 3300 5100 60  0000 C CNN
F 3 "" H 3300 5100 60  0000 C CNN
	1    3300 5100
	1    0    0    -1  
$EndComp
$Comp
L R R42
U 1 1 514F492A
P 3400 5100
F 0 "R42" V 3350 5200 50  0000 C CNN
F 1 "R" V 3450 5200 50  0000 C CNN
F 2 "" H 3400 5100 60  0000 C CNN
F 3 "" H 3400 5100 60  0000 C CNN
	1    3400 5100
	1    0    0    -1  
$EndComp
$Comp
L R R43
U 1 1 514F4930
P 3500 5100
F 0 "R43" V 3450 5200 50  0000 C CNN
F 1 "R" V 3550 5200 50  0000 C CNN
F 2 "" H 3500 5100 60  0000 C CNN
F 3 "" H 3500 5100 60  0000 C CNN
	1    3500 5100
	1    0    0    -1  
$EndComp
$Comp
L R R44
U 1 1 514F4936
P 3600 5100
F 0 "R44" V 3550 5200 50  0000 C CNN
F 1 "R" V 3650 5200 50  0000 C CNN
F 2 "" H 3600 5100 60  0000 C CNN
F 3 "" H 3600 5100 60  0000 C CNN
	1    3600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5350 2900 5450
Connection ~ 2900 5450
Wire Wire Line
	3000 5350 3000 5550
Connection ~ 3000 5550
Wire Wire Line
	3100 5350 3100 5650
Connection ~ 3100 5650
Wire Wire Line
	3200 5350 3200 5750
Connection ~ 3200 5750
Wire Wire Line
	3300 5350 3300 5850
Connection ~ 3300 5850
Wire Wire Line
	3400 5350 3400 5950
Connection ~ 3400 5950
Wire Wire Line
	3500 5350 3500 6050
Connection ~ 3500 6050
Wire Wire Line
	3600 5350 3600 6150
Connection ~ 3600 6150
Wire Wire Line
	2900 5050 2900 4900
Wire Wire Line
	2900 4900 3600 4900
Wire Wire Line
	3600 4900 3600 5050
Wire Wire Line
	3000 5050 3000 4900
Connection ~ 3000 4900
Wire Wire Line
	3100 5050 3100 4900
Connection ~ 3100 4900
Wire Wire Line
	3200 4800 3200 5050
Connection ~ 3200 4900
Wire Wire Line
	3300 5050 3300 4900
Connection ~ 3300 4900
Wire Wire Line
	3400 5050 3400 4900
Connection ~ 3400 4900
Wire Wire Line
	3500 5050 3500 4900
Connection ~ 3500 4900
$Comp
L C C17
U 1 1 514F7067
P 10550 2250
F 0 "C17" V 10650 2050 50  0000 L CNN
F 1 "C" V 10450 2150 50  0000 L CNN
F 2 "" H 10550 2250 60  0000 C CNN
F 3 "" H 10550 2250 60  0000 C CNN
	1    10550 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10850 2250 10700 2250
$Comp
L CAVALIER P8
U 1 1 514F72E5
P 7650 750
F 0 "P8" H 7750 950 60  0000 C CNN
F 1 "CAVALIER" H 7800 850 60  0000 C CNN
F 2 "" H 7650 750 60  0000 C CNN
F 3 "" H 7650 750 60  0000 C CNN
	1    7650 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 750  10350 750 
Wire Wire Line
	10350 750  10350 2250
Connection ~ 10350 2250
Wire Wire Line
	7650 750  4750 750 
Wire Wire Line
	4750 750  4750 2800
Connection ~ 4750 2800
Text Notes 7600 900  0    60   ~ 0
NO FILTER\n
$Comp
L -5VA #PWR93
U 1 1 514F88DE
P 6850 1250
F 0 "#PWR93" H 6850 1450 40  0001 C CNN
F 1 "-5VA" H 6850 1400 40  0000 C CNN
F 2 "" H 6850 1250 60  0000 C CNN
F 3 "" H 6850 1250 60  0000 C CNN
	1    6850 1250
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR94
U 1 1 514F88ED
P 6850 1750
F 0 "#PWR94" H 6850 1880 20  0001 C CNN
F 1 "+5VA" H 6850 1850 30  0000 C CNN
F 2 "" H 6850 1750 60  0000 C CNN
F 3 "" H 6850 1750 60  0000 C CNN
	1    6850 1750
	-1   0    0    1   
$EndComp
$Comp
L -5VA #PWR81
U 1 1 514F88FC
P 4400 3050
F 0 "#PWR81" H 4400 3250 40  0001 C CNN
F 1 "-5VA" H 4400 3200 40  0000 C CNN
F 2 "" H 4400 3050 60  0000 C CNN
F 3 "" H 4400 3050 60  0000 C CNN
	1    4400 3050
	0    -1   -1   0   
$EndComp
$Comp
L +5VA #PWR85
U 1 1 514F8915
P 5150 3150
F 0 "#PWR85" H 5150 3280 20  0001 C CNN
F 1 "+5VA" H 5150 3250 30  0000 C CNN
F 2 "" H 5150 3150 60  0000 C CNN
F 3 "" H 5150 3150 60  0000 C CNN
	1    5150 3150
	0    -1   -1   0   
$EndComp
$Comp
L -5VA #PWR99
U 1 1 514F8924
P 8400 3250
F 0 "#PWR99" H 8400 3450 40  0001 C CNN
F 1 "-5VA" H 8400 3400 40  0000 C CNN
F 2 "" H 8400 3250 60  0000 C CNN
F 3 "" H 8400 3250 60  0000 C CNN
	1    8400 3250
	0    1    1    0   
$EndComp
$Comp
L +5VD #PWR76
U 1 1 514F8933
P 2900 3600
F 0 "#PWR76" H 2900 3550 20  0001 C CNN
F 1 "+5VD" H 2900 3700 30  0000 C CNN
F 2 "" H 2900 3600 60  0000 C CNN
F 3 "" H 2900 3600 60  0000 C CNN
	1    2900 3600
	1    0    0    -1  
$EndComp
$Comp
L +5VD #PWR74
U 1 1 514F8942
P 2050 4950
F 0 "#PWR74" H 2050 4900 20  0001 C CNN
F 1 "+5VD" H 2050 5050 30  0000 C CNN
F 2 "" H 2050 4950 60  0000 C CNN
F 3 "" H 2050 4950 60  0000 C CNN
	1    2050 4950
	1    0    0    -1  
$EndComp
$Comp
L +5VD #PWR78
U 1 1 514F8951
P 3200 4800
F 0 "#PWR78" H 3200 4750 20  0001 C CNN
F 1 "+5VD" H 3200 4900 30  0000 C CNN
F 2 "" H 3200 4800 60  0000 C CNN
F 3 "" H 3200 4800 60  0000 C CNN
	1    3200 4800
	1    0    0    -1  
$EndComp
$Comp
L +5VD #PWR82
U 1 1 514F8960
P 4600 4650
F 0 "#PWR82" H 4600 4600 20  0001 C CNN
F 1 "+5VD" H 4600 4750 30  0000 C CNN
F 2 "" H 4600 4650 60  0000 C CNN
F 3 "" H 4600 4650 60  0000 C CNN
	1    4600 4650
	1    0    0    -1  
$EndComp
$Comp
L +5VD #PWR83
U 1 1 51B7AA1A
P 4700 7000
F 0 "#PWR83" H 4700 6950 20  0001 C CNN
F 1 "+5VD" H 4700 7100 30  0000 C CNN
F 2 "" H 4700 7000 60  0000 C CNN
F 3 "" H 4700 7000 60  0000 C CNN
	1    4700 7000
	-1   0    0    1   
$EndComp
$Comp
L +5VD #PWR88
U 1 1 51B7AA29
P 5850 5600
F 0 "#PWR88" H 5850 5550 20  0001 C CNN
F 1 "+5VD" H 5850 5700 30  0000 C CNN
F 2 "" H 5850 5600 60  0000 C CNN
F 3 "" H 5850 5600 60  0000 C CNN
	1    5850 5600
	0    -1   -1   0   
$EndComp
$Comp
L +5VD #PWR89
U 1 1 51B7AA38
P 5850 5950
F 0 "#PWR89" H 5850 5900 20  0001 C CNN
F 1 "+5VD" H 5850 6050 30  0000 C CNN
F 2 "" H 5850 5950 60  0000 C CNN
F 3 "" H 5850 5950 60  0000 C CNN
	1    5850 5950
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
