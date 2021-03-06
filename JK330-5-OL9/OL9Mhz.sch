EESchema Schematic File Version 2
LIBS:power
LIBS:CEN-SCHEMA
LIBS:OL9Mhz-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "JK330-Oscillateur Local 9Mhz"
Date "28 dec 2013"
Rev "V0-10"
Comp "F4DEB"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C10
U 1 1 514F658F
P 6950 4900
F 0 "C10" H 7000 5000 50  0000 L CNN
F 1 "68p" H 7000 4800 50  0000 L CNN
F 2 "" H 6950 4900 60  0000 C CNN
F 3 "" H 6950 4900 60  0000 C CNN
	1    6950 4900
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X2
U 1 1 514F65B4
P 5800 5050
F 0 "X2" H 5800 5200 60  0000 C CNN
F 1 "9Mhz" H 5800 4900 60  0000 C CNN
F 2 "" H 5800 5050 60  0000 C CNN
F 3 "" H 5800 5050 60  0000 C CNN
	1    5800 5050
	0    -1   -1   0   
$EndComp
$Comp
L CTRIM C14
U 1 1 514F660F
P 5800 6000
F 0 "C14" H 5930 5920 50  0000 C CNN
F 1 "10/60p" H 5950 5840 50  0000 C CNN
F 2 "" H 5800 6000 60  0000 C CNN
F 3 "" H 5800 6000 60  0000 C CNN
	1    5800 6000
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L3
U 1 1 514F661E
P 5800 5750
F 0 "L3" V 5750 5900 40  0000 C CNN
F 1 "10U" V 5875 5875 40  0000 C CNN
F 2 "" H 5800 5750 60  0000 C CNN
F 3 "" H 5800 5750 60  0000 C CNN
	1    5800 5750
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 514F6641
P 6400 4800
F 0 "R10" V 6350 4700 50  0000 C CNN
F 1 "100k" V 6450 4700 50  0000 C CNN
F 2 "" H 6400 4800 60  0000 C CNN
F 3 "" H 6400 4800 60  0000 C CNN
	1    6400 4800
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 514F6650
P 6950 5350
F 0 "C12" H 7000 5450 50  0000 L CNN
F 1 "220p" H 7000 5250 50  0000 L CNN
F 2 "" H 6950 5350 60  0000 C CNN
F 3 "" H 6950 5350 60  0000 C CNN
	1    6950 5350
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 514F6669
P 7700 5250
F 0 "R12" V 7650 5150 50  0000 C CNN
F 1 "220" V 7750 5150 50  0000 C CNN
F 2 "" H 7700 5250 60  0000 C CNN
F 3 "" H 7700 5250 60  0000 C CNN
	1    7700 5250
	1    0    0    -1  
$EndComp
$Comp
L BF996 U2
U 1 1 514F6B5B
P 7650 4300
F 0 "U2" H 7850 4300 60  0000 C CNN
F 1 "BF996" H 7900 4150 60  0000 C CNN
F 2 "" H 7650 4300 60  0000 C CNN
F 3 "" H 7650 4300 60  0000 C CNN
	1    7650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4500 5800 4750
Wire Wire Line
	7700 4600 7700 5100
Wire Wire Line
	7700 5100 7700 5200
Wire Wire Line
	6950 5050 6950 5100
Wire Wire Line
	6950 5100 6950 5200
Wire Wire Line
	6950 5100 7700 5100
Connection ~ 7700 5100
Connection ~ 6950 5100
Wire Wire Line
	5800 4500 6400 4500
Wire Wire Line
	6400 4500 6950 4500
Wire Wire Line
	6950 4500 7500 4500
Wire Wire Line
	6400 4750 6400 4500
Connection ~ 6400 4500
Wire Wire Line
	6950 4750 6950 4500
Connection ~ 6950 4500
Wire Wire Line
	6400 5050 6400 5150
Wire Wire Line
	6950 5500 6950 5600
Wire Wire Line
	7700 5500 7700 5600
Wire Wire Line
	5800 5350 5800 5450
Wire Wire Line
	5800 5750 5800 5850
Wire Wire Line
	5800 6150 5800 6250
$Comp
L GND #PWR01
U 1 1 514F6C49
P 5800 6250
F 0 "#PWR01" H 5800 6250 30  0001 C CNN
F 1 "GND" H 5800 6180 30  0001 C CNN
F 2 "" H 5800 6250 60  0000 C CNN
F 3 "" H 5800 6250 60  0000 C CNN
	1    5800 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 514F6C56
P 6400 5150
F 0 "#PWR02" H 6400 5150 30  0001 C CNN
F 1 "GND" H 6400 5080 30  0001 C CNN
F 2 "" H 6400 5150 60  0000 C CNN
F 3 "" H 6400 5150 60  0000 C CNN
	1    6400 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 514F6C5C
P 6950 5600
F 0 "#PWR03" H 6950 5600 30  0001 C CNN
F 1 "GND" H 6950 5530 30  0001 C CNN
F 2 "" H 6950 5600 60  0000 C CNN
F 3 "" H 6950 5600 60  0000 C CNN
	1    6950 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 514F6C62
P 7700 5600
F 0 "#PWR04" H 7700 5600 30  0001 C CNN
F 1 "GND" H 7700 5530 30  0001 C CNN
F 2 "" H 7700 5600 60  0000 C CNN
F 3 "" H 7700 5600 60  0000 C CNN
	1    7700 5600
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 514F6C79
P 6700 4100
F 0 "R7" V 6650 4000 50  0000 C CNN
F 1 "10k" V 6750 4000 50  0000 C CNN
F 2 "" H 6700 4100 60  0000 C CNN
F 3 "" H 6700 4100 60  0000 C CNN
	1    6700 4100
	0    -1   -1   0   
$EndComp
$Comp
L C C6
U 1 1 514F6C88
P 6800 3850
F 0 "C6" V 6850 3900 50  0000 L CNN
F 1 "10n" V 6850 3650 50  0000 L CNN
F 2 "" H 6800 3850 60  0000 C CNN
F 3 "" H 6800 3850 60  0000 C CNN
	1    6800 3850
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 514F6C97
P 7400 3550
F 0 "R5" V 7350 3450 50  0000 C CNN
F 1 "10k" V 7450 3450 50  0000 C CNN
F 2 "" H 7400 3550 60  0000 C CNN
F 3 "" H 7400 3550 60  0000 C CNN
	1    7400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3750 7400 3850
Wire Wire Line
	7400 3850 7400 4100
Wire Wire Line
	7400 4100 7400 4400
Wire Wire Line
	6950 3850 7400 3850
Connection ~ 7400 3850
Wire Wire Line
	6950 4100 7400 4100
Connection ~ 7400 4100
Wire Wire Line
	6650 3850 6550 3850
Wire Wire Line
	6550 3850 6550 4100
Wire Wire Line
	6550 4100 6550 4250
Wire Wire Line
	6650 4100 6550 4100
Connection ~ 6550 4100
$Comp
L GND #PWR05
U 1 1 514F6D12
P 6550 4250
F 0 "#PWR05" H 6550 4250 30  0001 C CNN
F 1 "GND" H 6550 4180 30  0001 C CNN
F 2 "" H 6550 4250 60  0000 C CNN
F 3 "" H 6550 4250 60  0000 C CNN
	1    6550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1600 7400 3450
$Comp
L R R3
U 1 1 514F6DB7
P 7700 3350
F 0 "R3" V 7650 3250 50  0000 C CNN
F 1 "100" V 7750 3250 50  0000 C CNN
F 2 "" H 7700 3350 60  0000 C CNN
F 3 "" H 7700 3350 60  0000 C CNN
	1    7700 3350
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 514F6DC6
P 8050 3450
F 0 "C3" H 8100 3550 50  0000 L CNN
F 1 "100n" H 8100 3350 50  0000 L CNN
F 2 "" H 8050 3450 60  0000 C CNN
F 3 "" H 8050 3450 60  0000 C CNN
	1    8050 3450
	1    0    0    -1  
$EndComp
$Comp
L ZENER-CMS D1
U 1 1 514F6DDB
P 8500 3450
F 0 "D1" H 8500 3550 50  0000 C CNN
F 1 "ZENER-9V" H 8500 3350 40  0000 C CNN
F 2 "" H 8500 3450 60  0000 C CNN
F 3 "" H 8500 3450 60  0000 C CNN
	1    8500 3450
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 514F6DEA
P 8800 3200
F 0 "R1" V 8750 3100 50  0000 C CNN
F 1 "330" V 8850 3100 50  0000 C CNN
F 2 "" H 8800 3200 60  0000 C CNN
F 3 "" H 8800 3200 60  0000 C CNN
	1    8800 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 3600 7700 4100
Wire Wire Line
	7700 4100 7700 4250
Wire Wire Line
	7700 1700 7700 2950
Wire Wire Line
	7700 2950 7700 3200
Wire Wire Line
	7700 3200 7700 3300
Wire Wire Line
	7700 3200 8050 3200
Wire Wire Line
	8050 3200 8500 3200
Wire Wire Line
	8500 3200 8750 3200
Connection ~ 7700 3200
Wire Wire Line
	8500 3300 8500 3200
Connection ~ 8500 3200
Wire Wire Line
	8050 3300 8050 3200
Connection ~ 8050 3200
Wire Wire Line
	8050 3600 8050 3700
Wire Wire Line
	8500 3600 8500 3700
$Comp
L GND #PWR06
U 1 1 514F6EDE
P 8050 3700
F 0 "#PWR06" H 8050 3700 30  0001 C CNN
F 1 "GND" H 8050 3630 30  0001 C CNN
F 2 "" H 8050 3700 60  0000 C CNN
F 3 "" H 8050 3700 60  0000 C CNN
	1    8050 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 514F6EEB
P 8500 3700
F 0 "#PWR07" H 8500 3700 30  0001 C CNN
F 1 "GND" H 8500 3630 30  0001 C CNN
F 2 "" H 8500 3700 60  0000 C CNN
F 3 "" H 8500 3700 60  0000 C CNN
	1    8500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 3200 9200 3200
Wire Wire Line
	9200 3200 9500 3200
Wire Wire Line
	9500 3200 9800 3200
Wire Wire Line
	9200 3100 9200 3200
Wire Wire Line
	9200 3200 9200 3350
$Comp
L +12V #PWR08
U 1 1 514F6F27
P 9200 3100
F 0 "#PWR08" H 9200 3050 20  0001 C CNN
F 1 "+12V" H 9200 3200 30  0000 C CNN
F 2 "" H 9200 3100 60  0000 C CNN
F 3 "" H 9200 3100 60  0000 C CNN
	1    9200 3100
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 514F6FBA
P 8100 4100
F 0 "C8" V 8200 4200 50  0000 L CNN
F 1 "15p" V 8200 3900 50  0000 L CNN
F 2 "" H 8100 4100 60  0000 C CNN
F 3 "" H 8100 4100 60  0000 C CNN
	1    8100 4100
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 514F6FDF
P 8400 4250
F 0 "R8" V 8350 4150 50  0000 C CNN
F 1 "100k" V 8450 4150 50  0000 C CNN
F 2 "" H 8400 4250 60  0000 C CNN
F 3 "" H 8400 4250 60  0000 C CNN
	1    8400 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4100 7700 4100
Connection ~ 7700 4100
Wire Wire Line
	8250 4100 8400 4100
Wire Wire Line
	8400 4100 8700 4100
Wire Wire Line
	8700 4100 8950 4100
Wire Wire Line
	8400 4200 8400 4100
Connection ~ 8400 4100
Wire Wire Line
	8400 4500 8400 4600
$Comp
L GND #PWR09
U 1 1 514F70A4
P 8400 4600
F 0 "#PWR09" H 8400 4600 30  0001 C CNN
F 1 "GND" H 8400 4530 30  0001 C CNN
F 2 "" H 8400 4600 60  0000 C CNN
F 3 "" H 8400 4600 60  0000 C CNN
	1    8400 4600
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 514F7132
P 3350 4900
F 0 "C9" H 3400 5000 50  0000 L CNN
F 1 "68p" H 3400 4800 50  0000 L CNN
F 2 "" H 3350 4900 60  0000 C CNN
F 3 "" H 3350 4900 60  0000 C CNN
	1    3350 4900
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 514F7138
P 2200 5050
F 0 "X1" H 2200 5200 60  0000 C CNN
F 1 "9Mhz" H 2200 4900 60  0000 C CNN
F 2 "" H 2200 5050 60  0000 C CNN
F 3 "" H 2200 5050 60  0000 C CNN
	1    2200 5050
	0    -1   -1   0   
$EndComp
$Comp
L CTRIM C13
U 1 1 514F713E
P 2200 6000
F 0 "C13" H 2330 5920 50  0000 C CNN
F 1 "10/60p" H 2350 5840 50  0000 C CNN
F 2 "" H 2200 6000 60  0000 C CNN
F 3 "" H 2200 6000 60  0000 C CNN
	1    2200 6000
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L2
U 1 1 514F7144
P 2200 5750
F 0 "L2" V 2150 5900 40  0000 C CNN
F 1 "10U" V 2275 5875 40  0000 C CNN
F 2 "" H 2200 5750 60  0000 C CNN
F 3 "" H 2200 5750 60  0000 C CNN
	1    2200 5750
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 514F714A
P 2800 4800
F 0 "R9" V 2750 4700 50  0000 C CNN
F 1 "100k" V 2850 4700 50  0000 C CNN
F 2 "" H 2800 4800 60  0000 C CNN
F 3 "" H 2800 4800 60  0000 C CNN
	1    2800 4800
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 514F7150
P 3350 5350
F 0 "C11" H 3400 5450 50  0000 L CNN
F 1 "220p" H 3400 5250 50  0000 L CNN
F 2 "" H 3350 5350 60  0000 C CNN
F 3 "" H 3350 5350 60  0000 C CNN
	1    3350 5350
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 514F7156
P 4100 5250
F 0 "R11" V 4050 5150 50  0000 C CNN
F 1 "220" V 4150 5150 50  0000 C CNN
F 2 "" H 4100 5250 60  0000 C CNN
F 3 "" H 4100 5250 60  0000 C CNN
	1    4100 5250
	1    0    0    -1  
$EndComp
$Comp
L BF996 U1
U 1 1 514F715C
P 4050 4300
F 0 "U1" H 4250 4200 60  0000 C CNN
F 1 "BF996" H 4300 4100 60  0000 C CNN
F 2 "" H 4050 4300 60  0000 C CNN
F 3 "" H 4050 4300 60  0000 C CNN
	1    4050 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4500 2200 4750
Wire Wire Line
	4100 4600 4100 5100
Wire Wire Line
	4100 5100 4100 5200
Wire Wire Line
	3350 5050 3350 5100
Wire Wire Line
	3350 5100 3350 5200
Wire Wire Line
	3350 5100 4100 5100
Connection ~ 4100 5100
Connection ~ 3350 5100
Wire Wire Line
	2200 4500 2800 4500
Wire Wire Line
	2800 4500 3350 4500
Wire Wire Line
	3350 4500 3900 4500
Wire Wire Line
	2800 4750 2800 4500
Connection ~ 2800 4500
Wire Wire Line
	3350 4750 3350 4500
Connection ~ 3350 4500
Wire Wire Line
	2800 5050 2800 5150
Wire Wire Line
	3350 5500 3350 5600
Wire Wire Line
	4100 5500 4100 5600
Wire Wire Line
	2200 5350 2200 5450
Wire Wire Line
	2200 5750 2200 5850
Wire Wire Line
	2200 6150 2200 6250
$Comp
L GND #PWR010
U 1 1 514F7173
P 2200 6250
F 0 "#PWR010" H 2200 6250 30  0001 C CNN
F 1 "GND" H 2200 6180 30  0001 C CNN
F 2 "" H 2200 6250 60  0000 C CNN
F 3 "" H 2200 6250 60  0000 C CNN
	1    2200 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 514F7179
P 2800 5150
F 0 "#PWR011" H 2800 5150 30  0001 C CNN
F 1 "GND" H 2800 5080 30  0001 C CNN
F 2 "" H 2800 5150 60  0000 C CNN
F 3 "" H 2800 5150 60  0000 C CNN
	1    2800 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 514F717F
P 3350 5600
F 0 "#PWR012" H 3350 5600 30  0001 C CNN
F 1 "GND" H 3350 5530 30  0001 C CNN
F 2 "" H 3350 5600 60  0000 C CNN
F 3 "" H 3350 5600 60  0000 C CNN
	1    3350 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 514F7185
P 4100 5600
F 0 "#PWR013" H 4100 5600 30  0001 C CNN
F 1 "GND" H 4100 5530 30  0001 C CNN
F 2 "" H 4100 5600 60  0000 C CNN
F 3 "" H 4100 5600 60  0000 C CNN
	1    4100 5600
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 514F718B
P 3100 4100
F 0 "R6" V 3050 4050 50  0000 C CNN
F 1 "10k" V 3150 4050 50  0000 C CNN
F 2 "" H 3100 4100 60  0000 C CNN
F 3 "" H 3100 4100 60  0000 C CNN
	1    3100 4100
	0    -1   -1   0   
$EndComp
$Comp
L C C5
U 1 1 514F7191
P 3200 3850
F 0 "C5" V 3300 3900 50  0000 L CNN
F 1 "10n" V 3300 3650 50  0000 L CNN
F 2 "" H 3200 3850 60  0000 C CNN
F 3 "" H 3200 3850 60  0000 C CNN
	1    3200 3850
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 514F7197
P 3800 3500
F 0 "R4" V 3750 3400 50  0000 C CNN
F 1 "10k" V 3850 3400 50  0000 C CNN
F 2 "" H 3800 3500 60  0000 C CNN
F 3 "" H 3800 3500 60  0000 C CNN
	1    3800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3750 3800 3850
Wire Wire Line
	3800 3850 3800 4100
Wire Wire Line
	3800 4100 3800 4400
Wire Wire Line
	3350 3850 3800 3850
Connection ~ 3800 3850
Wire Wire Line
	3350 4100 3800 4100
Connection ~ 3800 4100
Wire Wire Line
	3050 3850 2950 3850
Wire Wire Line
	2950 3850 2950 4100
Wire Wire Line
	2950 4100 2950 4250
Wire Wire Line
	3050 4100 2950 4100
Connection ~ 2950 4100
$Comp
L GND #PWR014
U 1 1 514F71A6
P 2950 4250
F 0 "#PWR014" H 2950 4250 30  0001 C CNN
F 1 "GND" H 2950 4180 30  0001 C CNN
F 2 "" H 2950 4250 60  0000 C CNN
F 3 "" H 2950 4250 60  0000 C CNN
	1    2950 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1500 3800 3450
$Comp
L R R2
U 1 1 514F71AE
P 4100 3350
F 0 "R2" V 4050 3250 50  0000 C CNN
F 1 "100" V 4150 3250 50  0000 C CNN
F 2 "" H 4100 3350 60  0000 C CNN
F 3 "" H 4100 3350 60  0000 C CNN
	1    4100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3600 4100 4100
Wire Wire Line
	4100 4100 4100 4250
$Comp
L C C7
U 1 1 514F71E5
P 4500 4100
F 0 "C7" V 4600 4150 50  0000 L CNN
F 1 "15p" V 4600 3900 50  0000 L CNN
F 2 "" H 4500 4100 60  0000 C CNN
F 3 "" H 4500 4100 60  0000 C CNN
	1    4500 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 4100 4100 4100
Connection ~ 4100 4100
Wire Wire Line
	4650 4100 5100 4100
Wire Wire Line
	5100 4100 5100 6600
Wire Wire Line
	5100 6600 8700 6600
Wire Wire Line
	8700 6600 8700 4100
Connection ~ 8700 4100
Wire Wire Line
	7700 2950 4100 2950
Connection ~ 7700 2950
Wire Wire Line
	4100 2950 4100 3300
$Comp
L BSN20 Q1
U 1 1 514F74E0
P 9100 4000
F 0 "Q1" H 9110 4170 60  0000 R CNN
F 1 "BSN20" H 9050 3750 60  0000 R CNN
F 2 "" H 9100 4000 60  0000 C CNN
F 3 "" H 9100 4000 60  0000 C CNN
	1    9100 4000
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 514F74EF
P 9200 3650
F 0 "L1" V 9150 3800 40  0000 C CNN
F 1 "22U" V 9275 3775 40  0000 C CNN
F 2 "" H 9200 3650 60  0000 C CNN
F 3 "" H 9200 3650 60  0000 C CNN
	1    9200 3650
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 514F74FE
P 9500 3400
F 0 "C1" H 9550 3500 50  0000 L CNN
F 1 "100n" H 9550 3300 50  0000 L CNN
F 2 "" H 9500 3400 60  0000 C CNN
F 3 "" H 9500 3400 60  0000 C CNN
	1    9500 3400
	1    0    0    -1  
$EndComp
Connection ~ 9200 3200
Wire Wire Line
	9200 3650 9200 3800
Wire Wire Line
	9200 3800 9200 3850
Wire Wire Line
	9200 4150 9200 4250
$Comp
L GND #PWR015
U 1 1 514F76CF
P 9200 4250
F 0 "#PWR015" H 9200 4250 30  0001 C CNN
F 1 "GND" H 9200 4180 30  0001 C CNN
F 2 "" H 9200 4250 60  0000 C CNN
F 3 "" H 9200 4250 60  0000 C CNN
	1    9200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3200 9500 3250
Wire Wire Line
	9500 3550 9500 3650
$Comp
L GND #PWR016
U 1 1 514F7798
P 9500 3650
F 0 "#PWR016" H 9500 3650 30  0001 C CNN
F 1 "GND" H 9500 3580 30  0001 C CNN
F 2 "" H 9500 3650 60  0000 C CNN
F 3 "" H 9500 3650 60  0000 C CNN
	1    9500 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3800 9550 3800
Wire Wire Line
	9550 3800 9800 3800
Connection ~ 9200 3800
$Comp
L C C4
U 1 1 514F7801
P 9950 3800
F 0 "C4" V 10000 3900 50  0000 L CNN
F 1 "1n" V 10000 3650 50  0000 L CNN
F 2 "" H 9950 3800 60  0000 C CNN
F 3 "" H 9950 3800 60  0000 C CNN
	1    9950 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10100 3800 10300 3800
$Comp
L CONN_3 K1
U 1 1 514F7900
P 8450 1600
F 0 "K1" V 8400 1600 50  0000 C CNN
F 1 "CONN_3" V 8500 1600 40  0000 C CNN
F 2 "" H 8450 1600 60  0000 C CNN
F 3 "" H 8450 1600 60  0000 C CNN
	1    8450 1600
	1    0    0    1   
$EndComp
Wire Wire Line
	7400 1600 8100 1600
Wire Wire Line
	8100 1700 7700 1700
Wire Wire Line
	8100 1500 3800 1500
Wire Wire Line
	10450 4000 10450 4050
$Comp
L GND #PWR017
U 1 1 514F7AFC
P 10450 4050
F 0 "#PWR017" H 10450 4050 30  0001 C CNN
F 1 "GND" H 10450 3980 30  0001 C CNN
F 2 "" H 10450 4050 60  0000 C CNN
F 3 "" H 10450 4050 60  0000 C CNN
	1    10450 4050
	1    0    0    -1  
$EndComp
$Comp
L U.FL P1
U 1 1 514F8198
P 10450 3800
F 0 "P1" H 10460 3920 60  0000 C CNN
F 1 "U.FL" V 10560 3740 40  0000 C CNN
F 2 "" H 10450 3800 60  0000 C CNN
F 3 "" H 10450 3800 60  0000 C CNN
	1    10450 3800
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 K2
U 1 1 514F7C44
P 2200 1800
F 0 "K2" H 2500 1950 50  0000 C CNN
F 1 "CONN_2" H 2550 1900 40  0000 C CNN
F 2 "~" H 2200 1800 60  0000 C CNN
F 3 "~" H 2200 1800 60  0000 C CNN
	1    2200 1800
	-1   0    0    1   
$EndComp
$Comp
L +12V #PWR018
U 1 1 514F7C53
P 2300 1650
F 0 "#PWR018" H 2300 1600 20  0001 C CNN
F 1 "+12V" H 2300 1750 30  0000 C CNN
F 2 "" H 2300 1650 60  0000 C CNN
F 3 "" H 2300 1650 60  0000 C CNN
	1    2300 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 514F7C62
P 2300 1850
F 0 "#PWR019" H 2300 1850 30  0001 C CNN
F 1 "GND" H 2300 1780 30  0001 C CNN
F 2 "" H 2300 1850 60  0000 C CNN
F 3 "" H 2300 1850 60  0000 C CNN
	1    2300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1700 2300 1700
Wire Wire Line
	2300 1700 2300 1650
Wire Wire Line
	2200 1800 2300 1800
Wire Wire Line
	2300 1800 2300 1850
$Comp
L CP C2
U 1 1 514F7D33
P 9800 3400
F 0 "C2" H 9850 3500 50  0000 L CNN
F 1 "10U" H 9850 3300 50  0000 L CNN
F 2 "~" H 9800 3400 60  0000 C CNN
F 3 "~" H 9800 3400 60  0000 C CNN
	1    9800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3500 9800 3600
Wire Wire Line
	9800 3200 9800 3300
Connection ~ 9500 3200
$Comp
L GND #PWR020
U 1 1 514F7E0C
P 9800 3600
F 0 "#PWR020" H 9800 3600 30  0001 C CNN
F 1 "GND" H 9800 3530 30  0001 C CNN
F 2 "" H 9800 3600 60  0000 C CNN
F 3 "" H 9800 3600 60  0000 C CNN
	1    9800 3600
	1    0    0    -1  
$EndComp
Text Notes 8600 1650 0    60   ~ 0
BLI/BLS
Text Notes 1400 1750 0    60   ~ 0
POWER\n12V
Wire Wire Line
	3800 4400 3900 4400
Wire Wire Line
	7400 4400 7500 4400
$Comp
L R R13
U 1 1 514F8E93
P 3050 1800
F 0 "R13" V 3000 1700 50  0000 C CNN
F 1 "3.3k" V 3100 1700 50  0000 C CNN
F 2 "~" H 3050 1800 60  0000 C CNN
F 3 "~" H 3050 1800 60  0000 C CNN
	1    3050 1800
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 514F8EA2
P 3050 1500
F 0 "D2" H 3050 1600 50  0000 C CNN
F 1 "LED" H 3050 1400 50  0000 C CNN
F 2 "~" H 3050 1500 60  0000 C CNN
F 3 "~" H 3050 1500 60  0000 C CNN
	1    3050 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 1350 3050 1250
Wire Wire Line
	3050 2050 3050 2150
$Comp
L +12V #PWR021
U 1 1 514F8FF1
P 3050 1250
F 0 "#PWR021" H 3050 1200 20  0001 C CNN
F 1 "+12V" H 3050 1350 30  0000 C CNN
F 2 "" H 3050 1250 60  0000 C CNN
F 3 "" H 3050 1250 60  0000 C CNN
	1    3050 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 514F9000
P 3050 2150
F 0 "#PWR022" H 3050 2150 30  0001 C CNN
F 1 "GND" H 3050 2080 30  0001 C CNN
F 2 "" H 3050 2150 60  0000 C CNN
F 3 "" H 3050 2150 60  0000 C CNN
	1    3050 2150
	1    0    0    -1  
$EndComp
$Comp
L COLONETTE K3
U 1 1 5150C0EE
P 9600 800
F 0 "K3" H 9600 800 60  0000 C CNN
F 1 "COLONETTE" H 9600 900 60  0000 C CNN
F 2 "~" H 9600 800 60  0000 C CNN
F 3 "~" H 9600 800 60  0000 C CNN
	1    9600 800 
	1    0    0    -1  
$EndComp
$Comp
L COLONETTE K4
U 1 1 5150C0FD
P 10250 800
F 0 "K4" H 10250 800 60  0000 C CNN
F 1 "COLONETTE" H 10250 900 60  0000 C CNN
F 2 "~" H 10250 800 60  0000 C CNN
F 3 "~" H 10250 800 60  0000 C CNN
	1    10250 800 
	1    0    0    -1  
$EndComp
$Comp
L COLONETTE K5
U 1 1 5150C10C
P 9600 1400
F 0 "K5" H 9600 1400 60  0000 C CNN
F 1 "COLONETTE" H 9600 1500 60  0000 C CNN
F 2 "~" H 9600 1400 60  0000 C CNN
F 3 "~" H 9600 1400 60  0000 C CNN
	1    9600 1400
	1    0    0    -1  
$EndComp
$Comp
L COLONETTE K6
U 1 1 5150C11B
P 10250 1400
F 0 "K6" H 10250 1400 60  0000 C CNN
F 1 "COLONETTE" H 10250 1500 60  0000 C CNN
F 2 "~" H 10250 1400 60  0000 C CNN
F 3 "~" H 10250 1400 60  0000 C CNN
	1    10250 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1650 3050 1750
$Comp
L BNC P2
U 1 1 5156F2EC
P 10450 4400
F 0 "P2" H 10460 4520 60  0000 C CNN
F 1 "BNC" V 10560 4340 40  0000 C CNN
F 2 "~" H 10450 4400 60  0000 C CNN
F 3 "~" H 10450 4400 60  0000 C CNN
	1    10450 4400
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 5156F305
P 9950 4400
F 0 "C15" V 10000 4500 50  0000 L CNN
F 1 "1n" V 10000 4250 50  0000 L CNN
F 2 "~" H 9950 4400 60  0000 C CNN
F 3 "~" H 9950 4400 60  0000 C CNN
	1    9950 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9550 3800 9550 4400
Wire Wire Line
	9550 4400 9800 4400
Connection ~ 9550 3800
Wire Wire Line
	10100 4400 10300 4400
Wire Wire Line
	10450 4600 10450 4650
$Comp
L GND #PWR023
U 1 1 5156F46A
P 10450 4650
F 0 "#PWR023" H 10450 4650 30  0001 C CNN
F 1 "GND" H 10450 4580 30  0001 C CNN
F 2 "" H 10450 4650 60  0000 C CNN
F 3 "" H 10450 4650 60  0000 C CNN
	1    10450 4650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
