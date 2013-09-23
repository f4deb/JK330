EESchema Schematic File Version 2
LIBS:conn
LIBS:power
LIBS:CEN-SCHEMA
LIBS:ELECTRONICAL_MAIN_BOARD_32-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "JK330-CPU"
Date "23 sep 2013"
Rev "V1-00"
Comp "F4DEB"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +12V #PWR1037
U 1 1 500C67D3
P 4300 6700
F 0 "#PWR1037" H 4300 6650 20  0001 C CNN
F 1 "+12V" H 4300 6800 30  0000 C CNN
F 2 "" H 4300 6700 60  0001 C CNN
F 3 "" H 4300 6700 60  0001 C CNN
	1    4300 6700
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR1036
U 1 1 500C67C9
P 4250 7000
F 0 "#PWR1036" H 4250 6960 30  0001 C CNN
F 1 "+3.3V" H 4250 7110 30  0000 C CNN
F 2 "" H 4250 7000 60  0001 C CNN
F 3 "" H 4250 7000 60  0001 C CNN
	1    4250 7000
	0    1    1    0   
$EndComp
Text Notes 3750 7600 0    90   ~ 18
ALIM\n\n
$Comp
L GND #PWR1039
U 1 1 500C6183
P 4300 7100
F 0 "#PWR1039" H 4300 7100 30  0001 C CNN
F 1 "GND" H 4300 7030 30  0001 C CNN
F 2 "" H 4300 7100 60  0001 C CNN
F 3 "" H 4300 7100 60  0001 C CNN
	1    4300 7100
	0    -1   -1   0   
$EndComp
$Comp
L SIL1 J1007
U 1 1 4FCFCB53
P 5650 1750
F 0 "J1007" H 5800 1900 70  0000 C CNN
F 1 "SIL1" H 5850 1650 70  0000 C CNN
F 2 "" H 5650 1750 60  0001 C CNN
F 3 "" H 5650 1750 60  0001 C CNN
	1    5650 1750
	1    0    0    -1  
$EndComp
$Comp
L SIL1 J1006
U 1 1 4FCFB466
P 5300 1750
F 0 "J1006" H 5450 1900 70  0000 C CNN
F 1 "SIL1" H 5500 1650 70  0000 C CNN
F 2 "" H 5300 1750 60  0001 C CNN
F 3 "" H 5300 1750 60  0001 C CNN
	1    5300 1750
	1    0    0    -1  
$EndComp
$Comp
L SIL1 J1005
U 1 1 4FCFB462
P 4950 1750
F 0 "J1005" H 5100 1900 70  0000 C CNN
F 1 "SIL1" H 5150 1650 70  0000 C CNN
F 2 "" H 4950 1750 60  0001 C CNN
F 3 "" H 4950 1750 60  0001 C CNN
	1    4950 1750
	1    0    0    -1  
$EndComp
Text Label 6950 2400 0    60   ~ 0
BD[0..7]
$Comp
L GND #PWR1041
U 1 1 4FCE6DAD
P 7300 5450
F 0 "#PWR1041" H 7300 5450 30  0001 C CNN
F 1 "GND" H 7300 5380 30  0001 C CNN
F 2 "" H 7300 5450 60  0001 C CNN
F 3 "" H 7300 5450 60  0001 C CNN
	1    7300 5450
	0    1    1    0   
$EndComp
$Comp
L CONN_4 P1003
U 1 1 4FCA9790
P 7700 5600
F 0 "P1003" V 7650 5600 50  0000 C CNN
F 1 "CONN_4" V 7750 5600 50  0000 C CNN
F 2 "" H 7700 5600 60  0001 C CNN
F 3 "" H 7700 5600 60  0001 C CNN
	1    7700 5600
	1    0    0    -1  
$EndComp
Text Notes 4750 6600 0    90   ~ 18
LED
$Comp
L +3.3V #PWR1034
U 1 1 4FC6889D
P 5700 6750
F 0 "#PWR1034" H 5700 6710 30  0001 C CNN
F 1 "+3.3V" H 5700 6860 30  0000 C CNN
F 2 "" H 5700 6750 60  0001 C CNN
F 3 "" H 5700 6750 60  0001 C CNN
	1    5700 6750
	1    0    0    -1  
$EndComp
$Comp
L R R1002
U 1 1 4FC6885A
P 5700 6900
F 0 "R1002" V 5650 7000 50  0000 C CNN
F 1 "R" V 5750 7000 50  0000 C CNN
F 2 "" H 5700 6900 60  0001 C CNN
F 3 "" H 5700 6900 60  0001 C CNN
	1    5700 6900
	1    0    0    -1  
$EndComp
$Comp
L R R1001
U 1 1 4FC68857
P 5550 6900
F 0 "R1001" V 5500 7000 50  0000 C CNN
F 1 "R" V 5600 7000 50  0000 C CNN
F 2 "" H 5550 6900 60  0001 C CNN
F 3 "" H 5550 6900 60  0001 C CNN
	1    5550 6900
	1    0    0    -1  
$EndComp
$Comp
L LED D1004
U 1 1 4FC68852
P 5700 7350
F 0 "D1004" H 5700 7450 50  0000 C CNN
F 1 "LED" H 5700 7250 50  0000 C CNN
F 2 "" H 5700 7350 60  0001 C CNN
F 3 "" H 5700 7350 60  0001 C CNN
	1    5700 7350
	0    1    1    0   
$EndComp
$Comp
L LED D1003
U 1 1 4FC6884A
P 5550 7350
F 0 "D1003" H 5550 7450 50  0000 C CNN
F 1 "LED" H 5550 7250 50  0000 C CNN
F 2 "" H 5550 7350 60  0001 C CNN
F 3 "" H 5550 7350 60  0001 C CNN
	1    5550 7350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR1032
U 1 1 4FC687FA
P 5250 7650
F 0 "#PWR1032" H 5250 7650 30  0001 C CNN
F 1 "GND" H 5250 7580 30  0001 C CNN
F 2 "" H 5250 7650 60  0001 C CNN
F 3 "" H 5250 7650 60  0001 C CNN
	1    5250 7650
	1    0    0    -1  
$EndComp
$Comp
L LED D1002
U 1 1 4FC687E8
P 5400 7350
F 0 "D1002" H 5400 7450 50  0000 C CNN
F 1 "LED" H 5400 7250 50  0000 C CNN
F 2 "" H 5400 7350 60  0001 C CNN
F 3 "" H 5400 7350 60  0001 C CNN
	1    5400 7350
	0    1    1    0   
$EndComp
$Comp
L LED D1001
U 1 1 4FC687DA
P 5250 7350
F 0 "D1001" H 5250 7450 50  0000 C CNN
F 1 "LED" H 5250 7250 50  0000 C CNN
F 2 "" H 5250 7350 60  0001 C CNN
F 3 "" H 5250 7350 60  0001 C CNN
	1    5250 7350
	0    1    1    0   
$EndComp
Text Notes 750  850  0    150  ~ 30
CPU 32 BITS JK330-A
Text Notes 6400 1400 0    90   ~ 18
LCD GRAPHIQUE\nMGLS24064
Text Label 9550 1500 0    60   ~ 0
BD3
Text Label 9550 1400 0    60   ~ 0
BD1
Text Label 9550 1300 0    60   ~ 0
/RST
Text Label 9550 1200 0    60   ~ 0
BC/D
Text Label 9550 1100 0    60   ~ 0
/BRD
Text Label 8450 1500 0    60   ~ 0
BD2
Text Label 8450 1400 0    60   ~ 0
BD0
Text Label 8450 1200 0    60   ~ 0
/BCE
Text Label 8450 1100 0    60   ~ 0
/BWR
Text Label 7250 2800 2    60   ~ 0
BC/D
Text Label 7250 2700 2    60   ~ 0
/BCE
Text Label 7250 2600 2    60   ~ 0
/BRD
Text Label 7250 2500 2    60   ~ 0
/BWR
$Comp
L GND #PWR1046
U 1 1 4FC68502
P 7950 900
F 0 "#PWR1046" H 7950 900 30  0001 C CNN
F 1 "GND" H 7950 830 30  0001 C CNN
F 2 "" H 7950 900 60  0001 C CNN
F 3 "" H 7950 900 60  0001 C CNN
	1    7950 900 
	0    1    1    0   
$EndComp
Text Label 7650 2250 2    60   ~ 0
BD7
Text Label 7650 2150 2    60   ~ 0
BD6
Text Label 7650 2050 2    60   ~ 0
BD5
Text Label 7650 1950 2    60   ~ 0
BD4
Text Label 7650 1850 2    60   ~ 0
BD3
Text Label 7650 1750 2    60   ~ 0
BD2
Text Label 7650 1650 2    60   ~ 0
BD1
Text Label 7650 1550 2    60   ~ 0
BD0
Entry Wire Line
	7350 1650 7450 1550
Entry Wire Line
	7350 1750 7450 1650
Entry Wire Line
	7350 1850 7450 1750
Entry Wire Line
	7350 1950 7450 1850
Entry Wire Line
	7350 2050 7450 1950
Entry Wire Line
	7350 2150 7450 2050
Entry Wire Line
	7350 2250 7450 2150
Entry Wire Line
	7350 2350 7450 2250
$Comp
L GND #PWR1031
U 1 1 4FC6814C
P 1350 5800
F 0 "#PWR1031" H 1350 5800 30  0001 C CNN
F 1 "GND" H 1350 5730 30  0001 C CNN
F 2 "" H 1350 5800 60  0001 C CNN
F 3 "" H 1350 5800 60  0001 C CNN
	1    1350 5800
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL SW1001
U 1 1 4FC68144
P 1450 5600
F 0 "SW1001" H 1600 5710 30  0000 C CNN
F 1 "SW_PUSH_SMALL" H 1450 5521 30  0000 C CNN
F 2 "" H 1450 5600 60  0001 C CNN
F 3 "" H 1450 5600 60  0001 C CNN
	1    1450 5600
	0    -1   -1   0   
$EndComp
Text Notes 2050 7600 2    90   ~ 18
ICD3
Text Notes 7800 4900 2    90   ~ 18
UART
Text Notes 7750 6100 2    90   ~ 18
I2C
Text Notes 7900 6700 0    90   ~ 0
I2C-1
Text Notes 7900 5200 0    90   ~ 0
UART-3\n\n\n
Text Notes 2100 6800 0    90   ~ 0
ICD3
$Comp
L GND #PWR1030
U 1 1 4FC53B98
P 2250 6000
F 0 "#PWR1030" H 2250 6000 30  0001 C CNN
F 1 "GND" H 2250 5930 30  0001 C CNN
F 2 "" H 2250 6000 60  0001 C CNN
F 3 "" H 2250 6000 60  0001 C CNN
	1    2250 6000
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR1029
U 1 1 4FC53B95
P 2150 6050
F 0 "#PWR1029" H 2150 6010 30  0001 C CNN
F 1 "+3.3V" H 2150 6160 30  0000 C CNN
F 2 "" H 2150 6050 60  0001 C CNN
F 3 "" H 2150 6050 60  0001 C CNN
	1    2150 6050
	1    0    0    -1  
$EndComp
$Comp
L RJ12 J1001
U 1 1 4FC53B65
P 2250 6700
F 0 "J1001" H 2450 7200 60  0000 C CNN
F 1 "RJ12" H 2100 7200 60  0000 C CNN
F 2 "" H 2250 6700 60  0001 C CNN
F 3 "" H 2250 6700 60  0001 C CNN
	1    2250 6700
	1    0    0    1   
$EndComp
$Comp
L GND #PWR1042
U 1 1 4FC53961
P 7300 6550
F 0 "#PWR1042" H 7300 6550 30  0001 C CNN
F 1 "GND" H 7300 6480 30  0001 C CNN
F 2 "" H 7300 6550 60  0001 C CNN
F 3 "" H 7300 6550 60  0001 C CNN
	1    7300 6550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR1040
U 1 1 4FC53901
P 7300 5000
F 0 "#PWR1040" H 7300 5000 30  0001 C CNN
F 1 "GND" H 7300 4930 30  0001 C CNN
F 2 "" H 7300 5000 60  0001 C CNN
F 3 "" H 7300 5000 60  0001 C CNN
	1    7300 5000
	0    1    1    0   
$EndComp
$Comp
L CONN_4 P1004
U 1 1 4FC53883
P 7700 6700
F 0 "P1004" V 7650 6700 50  0000 C CNN
F 1 "CONN_4" V 7750 6700 50  0000 C CNN
F 2 "" H 7700 6700 60  0001 C CNN
F 3 "" H 7700 6700 60  0001 C CNN
	1    7700 6700
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P1002
U 1 1 4FC5387D
P 7700 5150
F 0 "P1002" V 7650 5150 50  0000 C CNN
F 1 "CONN_4" V 7750 5150 50  0000 C CNN
F 2 "" H 7700 5150 60  0001 C CNN
F 3 "" H 7700 5150 60  0001 C CNN
	1    7700 5150
	1    0    0    -1  
$EndComp
Text Notes 4500 1450 0    90   ~ 18
FIXATION
$Comp
L SIL1 J1004
U 1 1 4E2C7675
P 4600 1750
F 0 "J1004" H 4750 1900 70  0000 C CNN
F 1 "SIL1" H 4800 1650 70  0000 C CNN
F 2 "" H 4600 1750 60  0001 C CNN
F 3 "" H 4600 1750 60  0001 C CNN
	1    4600 1750
	1    0    0    -1  
$EndComp
$Comp
L SIL1 J1003
U 1 1 4E2C7671
P 4250 1750
F 0 "J1003" H 4400 1900 70  0000 C CNN
F 1 "SIL1" H 4450 1650 70  0000 C CNN
F 2 "" H 4250 1750 60  0001 C CNN
F 3 "" H 4250 1750 60  0001 C CNN
	1    4250 1750
	1    0    0    -1  
$EndComp
$Comp
L SIL1 J1002
U 1 1 4E2C766E
P 3900 1750
F 0 "J1002" H 4050 1900 70  0000 C CNN
F 1 "SIL1" H 4100 1650 70  0000 C CNN
F 2 "" H 3900 1750 60  0001 C CNN
F 3 "" H 3900 1750 60  0001 C CNN
	1    3900 1750
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 P1001
U 1 1 523D868E
P 3800 6900
F 0 "P1001" V 3750 6900 50  0000 C CNN
F 1 "CONN_5" V 3850 6900 50  0000 C CNN
F 2 "" H 3800 6900 60  0000 C CNN
F 3 "" H 3800 6900 60  0000 C CNN
	1    3800 6900
	-1   0    0    -1  
$EndComp
Text Notes 7900 5650 0    90   ~ 0
UART-2\n\n\n
$Comp
L R R1003
U 1 1 523DDE05
P 8150 900
F 0 "R1003" V 8200 800 50  0000 C CNN
F 1 "0" V 8100 900 50  0000 C CNN
F 2 "~" H 8150 900 60  0000 C CNN
F 3 "~" H 8150 900 60  0000 C CNN
	1    8150 900 
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR1050
U 1 1 523DE005
P 9800 850
F 0 "#PWR1050" H 9800 850 30  0001 C CNN
F 1 "GND" H 9800 780 30  0001 C CNN
F 2 "" H 9800 850 60  0000 C CNN
F 3 "" H 9800 850 60  0000 C CNN
	1    9800 850 
	-1   0    0    1   
$EndComp
$Comp
L +5VD #PWR1048
U 1 1 523DEAF4
P 8400 1000
F 0 "#PWR1048" H 8400 950 20  0001 C CNN
F 1 "+5VD" H 8400 1100 30  0000 C CNN
F 2 "" H 8400 1000 60  0000 C CNN
F 3 "" H 8400 1000 60  0000 C CNN
	1    8400 1000
	0    -1   -1   0   
$EndComp
$Comp
L +5VD #PWR1043
U 1 1 523DF307
P 7350 5200
F 0 "#PWR1043" H 7350 5150 20  0001 C CNN
F 1 "+5VD" H 7350 5300 30  0000 C CNN
F 2 "" H 7350 5200 60  0000 C CNN
F 3 "" H 7350 5200 60  0000 C CNN
	1    7350 5200
	0    -1   -1   0   
$EndComp
$Comp
L +5VD #PWR1044
U 1 1 523DF316
P 7350 5650
F 0 "#PWR1044" H 7350 5600 20  0001 C CNN
F 1 "+5VD" H 7350 5750 30  0000 C CNN
F 2 "" H 7350 5650 60  0000 C CNN
F 3 "" H 7350 5650 60  0000 C CNN
	1    7350 5650
	0    -1   -1   0   
$EndComp
$Comp
L +5VD #PWR1045
U 1 1 523DF7D2
P 7350 6650
F 0 "#PWR1045" H 7350 6600 20  0001 C CNN
F 1 "+5VD" H 7350 6750 30  0000 C CNN
F 2 "" H 7350 6650 60  0000 C CNN
F 3 "" H 7350 6650 60  0000 C CNN
	1    7350 6650
	0    -1   -1   0   
$EndComp
$Comp
L +5VD #PWR1035
U 1 1 523DFDE4
P 4250 6800
F 0 "#PWR1035" H 4250 6750 20  0001 C CNN
F 1 "+5VD" H 4250 6900 30  0000 C CNN
F 2 "" H 4250 6800 60  0000 C CNN
F 3 "" H 4250 6800 60  0000 C CNN
	1    4250 6800
	0    1    1    0   
$EndComp
$Comp
L +5VD #PWR1033
U 1 1 523E054C
P 5400 6750
F 0 "#PWR1033" H 5400 6700 20  0001 C CNN
F 1 "+5VD" H 5400 6850 30  0000 C CNN
F 2 "" H 5400 6750 60  0000 C CNN
F 3 "" H 5400 6750 60  0000 C CNN
	1    5400 6750
	1    0    0    -1  
$EndComp
Text Label 9550 1000 0    60   ~ 0
CONTRASTE
Text Label 7000 2900 0    60   ~ 0
CONTRASTE
Text Label 2350 5500 0    60   ~ 0
/RST
Text Label 8450 1600 0    60   ~ 0
BD4
Text Label 9550 1600 0    60   ~ 0
BD5
Text Label 8450 1700 0    60   ~ 0
BD6
Text Label 9550 1700 0    60   ~ 0
BD7
Text Label 8450 1800 0    60   ~ 0
FS
$Comp
L CONN_10X2 P1006
U 1 1 523E4B92
P 9050 1350
F 0 "P1006" H 9050 1900 60  0000 C CNN
F 1 "CONN_10X2" V 9050 1250 50  0000 C CNN
F 2 "" H 9050 1350 60  0000 C CNN
F 3 "" H 9050 1350 60  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L CAVALIER2 P1005
U 1 1 523E591D
P 8200 2000
F 0 "P1005" H 8250 2100 60  0000 C CNN
F 1 "CAVALIER2" H 8400 1900 60  0000 C CNN
F 2 "~" H 8200 2000 60  0000 C CNN
F 3 "~" H 8200 2000 60  0000 C CNN
	1    8200 2000
	1    0    0    -1  
$EndComp
$Comp
L +5VD #PWR1049
U 1 1 523E5BCB
P 8650 2000
F 0 "#PWR1049" H 8650 1950 20  0001 C CNN
F 1 "+5VD" H 8650 2100 30  0000 C CNN
F 2 "" H 8650 2000 60  0000 C CNN
F 3 "" H 8650 2000 60  0000 C CNN
	1    8650 2000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR1047
U 1 1 523E5BDA
P 8150 2000
F 0 "#PWR1047" H 8150 2000 30  0001 C CNN
F 1 "GND" H 8150 1930 30  0001 C CNN
F 2 "" H 8150 2000 60  0000 C CNN
F 3 "" H 8150 2000 60  0000 C CNN
	1    8150 2000
	0    1    1    0   
$EndComp
$Sheet
S 9100 2650 1150 2050
U 523D5BCA
F0 "INTERFACE BOARD" 50
F1 "INTERFACE BOARD.sch" 50
F2 "Y1" I R 10250 3200 60 
F3 "Y2" I R 10250 3300 60 
F4 "Y3" I R 10250 3400 60 
F5 "Y4" I R 10250 3500 60 
F6 "X1" I R 10250 2750 60 
F7 "X2" I R 10250 2850 60 
F8 "X3" I R 10250 2950 60 
F9 "X4" I R 10250 3050 60 
F10 "Y1A" I R 10250 3650 60 
F11 "Y2A" I R 10250 3750 60 
F12 "Y3A" I R 10250 3850 60 
F13 "Y4A" I R 10250 3950 60 
F14 "Y1B" I R 10250 4100 60 
F15 "Y2B" I R 10250 4200 60 
F16 "Y3B" I R 10250 4300 60 
F17 "Y4B" I R 10250 4400 60 
F18 "LED1" I L 9100 3650 60 
F19 "LED2" I L 9100 3750 60 
F20 "LED3" I L 9100 3850 60 
F21 "LED4" I L 9100 3950 60 
F22 "LED5" I L 9100 4050 60 
F23 "LED6" I L 9100 4150 60 
F24 "LED7" I L 9100 4250 60 
F25 "LED8" I L 9100 4350 60 
F26 "BKAV" I L 9100 2850 60 
F27 "BKDA" I L 9100 2950 60 
F28 "BKDB" I L 9100 3050 60 
F29 "BKDC" I L 9100 3150 60 
F30 "BKDD" I L 9100 3250 60 
F31 "BKOE\\" I L 9100 2750 60 
F32 "BKDE" I L 9100 3350 60 
F33 "BKDF" I L 9100 3450 60 
F34 "SCL" I L 9100 4500 60 
F35 "SDA" I L 9100 4600 60 
$EndSheet
$Comp
L CONN_5X2 P1007
U 1 1 523DC1A0
P 10350 5100
F 0 "P1007" H 10350 5400 60  0000 C CNN
F 1 "CONN_5X2" V 10350 5100 50  0000 C CNN
F 2 "" H 10350 5100 60  0000 C CNN
F 3 "" H 10350 5100 60  0000 C CNN
	1    10350 5100
	1    0    0    -1  
$EndComp
$Sheet
S 2750 2300 1600 3700
U 4F6A45BB
F0 "PIC32" 60
F1 "PIC32.sch" 60
F2 "SCL1" I R 4350 4450 60 
F3 "D[0..7]" I R 4350 2400 60 
F4 "U2TX" I R 4350 3050 60 
F5 "U2RX" I R 4350 3150 60 
F6 "PGED1" I L 2750 5600 60 
F7 "PGEC1" I L 2750 5700 60 
F8 "RST" I L 2750 5500 60 
F9 "OC5" I R 4350 5000 60 
F10 "OC2" I R 4350 4700 60 
F11 "OC1" I R 4350 4600 60 
F12 "/WR" I R 4350 2500 60 
F13 "/CE" I R 4350 2700 60 
F14 "/RD" I R 4350 2600 60 
F15 "C/D" I R 4350 2800 60 
F16 "ADC1" I L 2750 2400 60 
F17 "ADC2" I L 2750 2500 60 
F18 "ADC3" I L 2750 2600 60 
F19 "ADC4" I L 2750 2700 60 
F20 "ADC5" I L 2750 2800 60 
F21 "ADC6" I L 2750 2900 60 
F22 "ADC7" I L 2750 3000 60 
F23 "ADC8" I L 2750 3100 60 
F24 "ADC9" I L 2750 3200 60 
F25 "ADC10" I L 2750 3300 60 
F26 "ADC12" I L 2750 3400 60 
F27 "ADC11" I L 2750 3500 60 
F28 "ADC13" I L 2750 3600 60 
F29 "ADC14" I L 2750 3700 60 
F30 "U3RX" I R 4350 3350 60 
F31 "U3TX" I R 4350 3250 60 
F32 "SDA1" I R 4350 4350 60 
F33 "OC3" I R 4350 4800 60 
F34 "OC4" I R 4350 4900 60 
F35 "KDA" I R 4350 3700 60 
F36 "KDB" I R 4350 3800 60 
F37 "KDC" I R 4350 3900 60 
F38 "KDD" I R 4350 4000 60 
F39 "KDE" I R 4350 4100 60 
F40 "KDF" I R 4350 4200 60 
F41 "/KOE" I R 4350 3500 60 
F42 "KAV" I R 4350 3600 60 
$EndSheet
$Comp
L CONN_5X2 P1008
U 1 1 52403CBB
P 10350 5850
F 0 "P1008" H 10350 6150 60  0000 C CNN
F 1 "CONN_5X2" V 10350 5850 50  0000 C CNN
F 2 "" H 10350 5850 60  0000 C CNN
F 3 "" H 10350 5850 60  0000 C CNN
	1    10350 5850
	1    0    0    -1  
$EndComp
$Comp
L CONN_5X2 P1009
U 1 1 52403CCA
P 10400 6600
F 0 "P1009" H 10400 6900 60  0000 C CNN
F 1 "CONN_5X2" V 10400 6600 50  0000 C CNN
F 2 "" H 10400 6600 60  0000 C CNN
F 3 "" H 10400 6600 60  0000 C CNN
	1    10400 6600
	1    0    0    -1  
$EndComp
$Sheet
S 5550 2300 1300 4000
U 4F6A4679
F0 "5vto3v3" 60
F1 "5vto3v3.sch" 60
F2 "D[0..7]" I L 5550 2400 60 
F3 "SDA1-5V" I R 6850 6150 60 
F4 "SCL1-5V" I R 6850 6050 60 
F5 "SCL1" I L 5550 4450 60 
F6 "SDA1" I L 5550 4350 60 
F7 "U2RX" I L 5550 3150 60 
F8 "U2RX-5V" I R 6850 5750 60 
F9 "U2TX-5V" I R 6850 5550 60 
F10 "U2TX" I L 5550 3050 60 
F11 "OC5" I L 5550 5000 60 
F12 "OC2" I L 5550 4700 60 
F13 "OC1" I L 5550 4600 60 
F14 "BD[0..7]" I R 6850 2400 60 
F15 "CONTRASTE" I R 6850 2900 60 
F16 "U3RX-5V" I R 6850 5300 60 
F17 "U3RX" I L 5550 3350 60 
F18 "C/D" I L 5550 2800 60 
F19 "U3TX" I L 5550 3250 60 
F20 "U3TX-5V" I R 6850 5100 60 
F21 "/BCE" I R 6850 2700 60 
F22 "/WR" I L 5550 2500 60 
F23 "/RD" I L 5550 2600 60 
F24 "/CE" I L 5550 2700 60 
F25 "/BWR" I R 6850 2500 60 
F26 "/BRD" I R 6850 2600 60 
F27 "BC/D" I R 6850 2800 60 
F28 "OC4" I L 5550 4900 60 
F29 "BOC5" I R 6850 4600 60 
F30 "BOC3" I R 6850 4400 60 
F31 "OC3" I L 5550 4800 60 
F32 "BOC1" I R 6850 4200 60 
F33 "BOC2" I R 6850 4300 60 
F34 "BOC4" I R 6850 4500 60 
F35 "KAV" I L 5550 3600 60 
F36 "KDA" I L 5550 3700 60 
F37 "KDB" I L 5550 3800 60 
F38 "KDC" I L 5550 3900 60 
F39 "KDE" I L 5550 4100 60 
F40 "KDF" I L 5550 4200 60 
F41 "/BKOE" I R 6850 3100 60 
F42 "/KOE" I L 5550 3500 60 
F43 "BKDA" I R 6850 3300 60 
F44 "BKDB" I R 6850 3400 60 
F45 "BKDC" I R 6850 3500 60 
F46 "BKDD" I R 6850 3600 60 
F47 "BKDE" I R 6850 3700 60 
F48 "BKDF" I R 6850 3800 60 
F49 "KDD" I L 5550 4000 60 
F50 "BKAV" I R 6850 3200 60 
$EndSheet
Text Label 6950 6050 0    60   ~ 0
SCL
Text Label 6950 6150 0    60   ~ 0
SDA
Text Label 8800 4500 0    60   ~ 0
SCL
Text Label 8800 4600 0    60   ~ 0
SDA
Text Label 8800 3650 0    60   ~ 0
LED1
Text Label 8800 3750 0    60   ~ 0
LED2
Text Label 8800 3850 0    60   ~ 0
LED3
Text Label 8800 3950 0    60   ~ 0
LED4
Text Label 8800 4050 0    60   ~ 0
LED5
Text Label 8800 4150 0    60   ~ 0
LED6
Text Label 8800 4250 0    60   ~ 0
LED7
Text Label 8800 4350 0    60   ~ 0
LED8
$Comp
L CONN_3 K1001
U 1 1 524125E6
P 750 1500
F 0 "K1001" V 700 1500 50  0000 C CNN
F 1 "CONN_3" V 800 1500 40  0000 C CNN
F 2 "" H 750 1500 60  0000 C CNN
F 3 "" H 750 1500 60  0000 C CNN
	1    750  1500
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR1001
U 1 1 52414000
P 1150 1400
F 0 "#PWR1001" H 1150 1400 30  0001 C CNN
F 1 "GND" H 1150 1330 30  0001 C CNN
F 2 "" H 1150 1400 60  0000 C CNN
F 3 "" H 1150 1400 60  0000 C CNN
	1    1150 1400
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR1008
U 1 1 52414180
P 1300 1500
F 0 "#PWR1008" H 1300 1460 30  0001 C CNN
F 1 "+3.3V" H 1300 1610 30  0000 C CNN
F 2 "" H 1300 1500 60  0000 C CNN
F 3 "" H 1300 1500 60  0000 C CNN
	1    1300 1500
	1    0    0    -1  
$EndComp
Text Label 1150 1600 0    60   ~ 0
ADC1
$Comp
L CONN_3 K1002
U 1 1 52418F1C
P 750 1850
F 0 "K1002" V 700 1850 50  0000 C CNN
F 1 "CONN_3" V 800 1850 40  0000 C CNN
F 2 "" H 750 1850 60  0000 C CNN
F 3 "" H 750 1850 60  0000 C CNN
	1    750  1850
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR1002
U 1 1 52418F25
P 1150 1750
F 0 "#PWR1002" H 1150 1750 30  0001 C CNN
F 1 "GND" H 1150 1680 30  0001 C CNN
F 2 "" H 1150 1750 60  0000 C CNN
F 3 "" H 1150 1750 60  0000 C CNN
	1    1150 1750
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR1009
U 1 1 52418F2B
P 1300 1850
F 0 "#PWR1009" H 1300 1810 30  0001 C CNN
F 1 "+3.3V" H 1300 1960 30  0000 C CNN
F 2 "" H 1300 1850 60  0000 C CNN
F 3 "" H 1300 1850 60  0000 C CNN
	1    1300 1850
	1    0    0    -1  
$EndComp
Text Label 1150 1950 0    60   ~ 0
ADC2
$Comp
L CONN_3 K1003
U 1 1 524191F6
P 750 2200
F 0 "K1003" V 700 2200 50  0000 C CNN
F 1 "CONN_3" V 800 2200 40  0000 C CNN
F 2 "" H 750 2200 60  0000 C CNN
F 3 "" H 750 2200 60  0000 C CNN
	1    750  2200
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR1003
U 1 1 524191FF
P 1150 2100
F 0 "#PWR1003" H 1150 2100 30  0001 C CNN
F 1 "GND" H 1150 2030 30  0001 C CNN
F 2 "" H 1150 2100 60  0000 C CNN
F 3 "" H 1150 2100 60  0000 C CNN
	1    1150 2100
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR1010
U 1 1 52419205
P 1300 2200
F 0 "#PWR1010" H 1300 2160 30  0001 C CNN
F 1 "+3.3V" H 1300 2310 30  0000 C CNN
F 2 "" H 1300 2200 60  0000 C CNN
F 3 "" H 1300 2200 60  0000 C CNN
	1    1300 2200
	1    0    0    -1  
$EndComp
Text Label 1150 2300 0    60   ~ 0
ADC3
$Comp
L CONN_3 K1004
U 1 1 5241920C
P 750 2550
F 0 "K1004" V 700 2550 50  0000 C CNN
F 1 "CONN_3" V 800 2550 40  0000 C CNN
F 2 "" H 750 2550 60  0000 C CNN
F 3 "" H 750 2550 60  0000 C CNN
	1    750  2550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR1004
U 1 1 52419215
P 1150 2450
F 0 "#PWR1004" H 1150 2450 30  0001 C CNN
F 1 "GND" H 1150 2380 30  0001 C CNN
F 2 "" H 1150 2450 60  0000 C CNN
F 3 "" H 1150 2450 60  0000 C CNN
	1    1150 2450
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR1011
U 1 1 5241921B
P 1300 2550
F 0 "#PWR1011" H 1300 2510 30  0001 C CNN
F 1 "+3.3V" H 1300 2660 30  0000 C CNN
F 2 "" H 1300 2550 60  0000 C CNN
F 3 "" H 1300 2550 60  0000 C CNN
	1    1300 2550
	1    0    0    -1  
$EndComp
Text Label 1150 2650 0    60   ~ 0
ADC4
$Comp
L CONN_3 K1005
U 1 1 52419BD0
P 750 2900
F 0 "K1005" V 700 2900 50  0000 C CNN
F 1 "CONN_3" V 800 2900 40  0000 C CNN
F 2 "" H 750 2900 60  0000 C CNN
F 3 "" H 750 2900 60  0000 C CNN
	1    750  2900
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR1005
U 1 1 52419BD9
P 1150 2800
F 0 "#PWR1005" H 1150 2800 30  0001 C CNN
F 1 "GND" H 1150 2730 30  0001 C CNN
F 2 "" H 1150 2800 60  0000 C CNN
F 3 "" H 1150 2800 60  0000 C CNN
	1    1150 2800
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR1012
U 1 1 52419BDF
P 1300 2900
F 0 "#PWR1012" H 1300 2860 30  0001 C CNN
F 1 "+3.3V" H 1300 3010 30  0000 C CNN
F 2 "" H 1300 2900 60  0000 C CNN
F 3 "" H 1300 2900 60  0000 C CNN
	1    1300 2900
	1    0    0    -1  
$EndComp
Text Label 1150 3000 0    60   ~ 0
ADC5
$Comp
L CONN_3 K1006
U 1 1 52419BE6
P 750 3250
F 0 "K1006" V 700 3250 50  0000 C CNN
F 1 "CONN_3" V 800 3250 40  0000 C CNN
F 2 "" H 750 3250 60  0000 C CNN
F 3 "" H 750 3250 60  0000 C CNN
	1    750  3250
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR1006
U 1 1 52419BEF
P 1150 3150
F 0 "#PWR1006" H 1150 3150 30  0001 C CNN
F 1 "GND" H 1150 3080 30  0001 C CNN
F 2 "" H 1150 3150 60  0000 C CNN
F 3 "" H 1150 3150 60  0000 C CNN
	1    1150 3150
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR1013
U 1 1 52419BF5
P 1300 3250
F 0 "#PWR1013" H 1300 3210 30  0001 C CNN
F 1 "+3.3V" H 1300 3360 30  0000 C CNN
F 2 "" H 1300 3250 60  0000 C CNN
F 3 "" H 1300 3250 60  0000 C CNN
	1    1300 3250
	1    0    0    -1  
$EndComp
Text Label 1150 3350 0    60   ~ 0
ADC6
$Comp
L CONN_3 K1007
U 1 1 52419BFC
P 750 3600
F 0 "K1007" V 700 3600 50  0000 C CNN
F 1 "CONN_3" V 800 3600 40  0000 C CNN
F 2 "" H 750 3600 60  0000 C CNN
F 3 "" H 750 3600 60  0000 C CNN
	1    750  3600
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR1007
U 1 1 52419C05
P 1150 3500
F 0 "#PWR1007" H 1150 3500 30  0001 C CNN
F 1 "GND" H 1150 3430 30  0001 C CNN
F 2 "" H 1150 3500 60  0000 C CNN
F 3 "" H 1150 3500 60  0000 C CNN
	1    1150 3500
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR1014
U 1 1 52419C0B
P 1300 3600
F 0 "#PWR1014" H 1300 3560 30  0001 C CNN
F 1 "+3.3V" H 1300 3710 30  0000 C CNN
F 2 "" H 1300 3600 60  0000 C CNN
F 3 "" H 1300 3600 60  0000 C CNN
	1    1300 3600
	1    0    0    -1  
$EndComp
Text Label 1150 3700 0    60   ~ 0
ADC7
$Comp
L CONN_3 K1008
U 1 1 5241C933
P 1550 1500
F 0 "K1008" V 1500 1500 50  0000 C CNN
F 1 "CONN_3" V 1600 1500 40  0000 C CNN
F 2 "" H 1550 1500 60  0000 C CNN
F 3 "" H 1550 1500 60  0000 C CNN
	1    1550 1500
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR1015
U 1 1 5241C93C
P 1950 1400
F 0 "#PWR1015" H 1950 1400 30  0001 C CNN
F 1 "GND" H 1950 1330 30  0001 C CNN
F 2 "" H 1950 1400 60  0000 C CNN
F 3 "" H 1950 1400 60  0000 C CNN
	1    1950 1400
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR1022
U 1 1 5241C942
P 2100 1500
F 0 "#PWR1022" H 2100 1460 30  0001 C CNN
F 1 "+3.3V" H 2100 1610 30  0000 C CNN
F 2 "" H 2100 1500 60  0000 C CNN
F 3 "" H 2100 1500 60  0000 C CNN
	1    2100 1500
	1    0    0    -1  
$EndComp
Text Label 1950 1600 0    60   ~ 0
ADC8
$Comp
L CONN_3 K1009
U 1 1 5241C949
P 1550 1850
F 0 "K1009" V 1500 1850 50  0000 C CNN
F 1 "CONN_3" V 1600 1850 40  0000 C CNN
F 2 "" H 1550 1850 60  0000 C CNN
F 3 "" H 1550 1850 60  0000 C CNN
	1    1550 1850
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR1016
U 1 1 5241C952
P 1950 1750
F 0 "#PWR1016" H 1950 1750 30  0001 C CNN
F 1 "GND" H 1950 1680 30  0001 C CNN
F 2 "" H 1950 1750 60  0000 C CNN
F 3 "" H 1950 1750 60  0000 C CNN
	1    1950 1750
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR1023
U 1 1 5241C958
P 2100 1850
F 0 "#PWR1023" H 2100 1810 30  0001 C CNN
F 1 "+3.3V" H 2100 1960 30  0000 C CNN
F 2 "" H 2100 1850 60  0000 C CNN
F 3 "" H 2100 1850 60  0000 C CNN
	1    2100 1850
	1    0    0    -1  
$EndComp
Text Label 1950 1950 0    60   ~ 0
ADC9
$Comp
L CONN_3 K1010
U 1 1 5241C95F
P 1550 2200
F 0 "K1010" V 1500 2200 50  0000 C CNN
F 1 "CONN_3" V 1600 2200 40  0000 C CNN
F 2 "" H 1550 2200 60  0000 C CNN
F 3 "" H 1550 2200 60  0000 C CNN
	1    1550 2200
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR1017
U 1 1 5241C968
P 1950 2100
F 0 "#PWR1017" H 1950 2100 30  0001 C CNN
F 1 "GND" H 1950 2030 30  0001 C CNN
F 2 "" H 1950 2100 60  0000 C CNN
F 3 "" H 1950 2100 60  0000 C CNN
	1    1950 2100
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR1024
U 1 1 5241C96E
P 2100 2200
F 0 "#PWR1024" H 2100 2160 30  0001 C CNN
F 1 "+3.3V" H 2100 2310 30  0000 C CNN
F 2 "" H 2100 2200 60  0000 C CNN
F 3 "" H 2100 2200 60  0000 C CNN
	1    2100 2200
	1    0    0    -1  
$EndComp
Text Label 1950 2300 0    60   ~ 0
ADC10
$Comp
L CONN_3 K1011
U 1 1 5241C975
P 1550 2550
F 0 "K1011" V 1500 2550 50  0000 C CNN
F 1 "CONN_3" V 1600 2550 40  0000 C CNN
F 2 "" H 1550 2550 60  0000 C CNN
F 3 "" H 1550 2550 60  0000 C CNN
	1    1550 2550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR1018
U 1 1 5241C97E
P 1950 2450
F 0 "#PWR1018" H 1950 2450 30  0001 C CNN
F 1 "GND" H 1950 2380 30  0001 C CNN
F 2 "" H 1950 2450 60  0000 C CNN
F 3 "" H 1950 2450 60  0000 C CNN
	1    1950 2450
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR1025
U 1 1 5241C984
P 2100 2550
F 0 "#PWR1025" H 2100 2510 30  0001 C CNN
F 1 "+3.3V" H 2100 2660 30  0000 C CNN
F 2 "" H 2100 2550 60  0000 C CNN
F 3 "" H 2100 2550 60  0000 C CNN
	1    2100 2550
	1    0    0    -1  
$EndComp
Text Label 1950 2650 0    60   ~ 0
ADC11
$Comp
L CONN_3 K1012
U 1 1 5241C98B
P 1550 2900
F 0 "K1012" V 1500 2900 50  0000 C CNN
F 1 "CONN_3" V 1600 2900 40  0000 C CNN
F 2 "" H 1550 2900 60  0000 C CNN
F 3 "" H 1550 2900 60  0000 C CNN
	1    1550 2900
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR1019
U 1 1 5241C994
P 1950 2800
F 0 "#PWR1019" H 1950 2800 30  0001 C CNN
F 1 "GND" H 1950 2730 30  0001 C CNN
F 2 "" H 1950 2800 60  0000 C CNN
F 3 "" H 1950 2800 60  0000 C CNN
	1    1950 2800
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR1026
U 1 1 5241C99A
P 2100 2900
F 0 "#PWR1026" H 2100 2860 30  0001 C CNN
F 1 "+3.3V" H 2100 3010 30  0000 C CNN
F 2 "" H 2100 2900 60  0000 C CNN
F 3 "" H 2100 2900 60  0000 C CNN
	1    2100 2900
	1    0    0    -1  
$EndComp
Text Label 1950 3000 0    60   ~ 0
ADC12
$Comp
L CONN_3 K1013
U 1 1 5241C9A1
P 1550 3250
F 0 "K1013" V 1500 3250 50  0000 C CNN
F 1 "CONN_3" V 1600 3250 40  0000 C CNN
F 2 "" H 1550 3250 60  0000 C CNN
F 3 "" H 1550 3250 60  0000 C CNN
	1    1550 3250
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR1020
U 1 1 5241C9AA
P 1950 3150
F 0 "#PWR1020" H 1950 3150 30  0001 C CNN
F 1 "GND" H 1950 3080 30  0001 C CNN
F 2 "" H 1950 3150 60  0000 C CNN
F 3 "" H 1950 3150 60  0000 C CNN
	1    1950 3150
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR1027
U 1 1 5241C9B0
P 2100 3250
F 0 "#PWR1027" H 2100 3210 30  0001 C CNN
F 1 "+3.3V" H 2100 3360 30  0000 C CNN
F 2 "" H 2100 3250 60  0000 C CNN
F 3 "" H 2100 3250 60  0000 C CNN
	1    2100 3250
	1    0    0    -1  
$EndComp
Text Label 1950 3350 0    60   ~ 0
ADC13
$Comp
L CONN_3 K1014
U 1 1 5241C9B7
P 1550 3600
F 0 "K1014" V 1500 3600 50  0000 C CNN
F 1 "CONN_3" V 1600 3600 40  0000 C CNN
F 2 "" H 1550 3600 60  0000 C CNN
F 3 "" H 1550 3600 60  0000 C CNN
	1    1550 3600
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR1021
U 1 1 5241C9C0
P 1950 3500
F 0 "#PWR1021" H 1950 3500 30  0001 C CNN
F 1 "GND" H 1950 3430 30  0001 C CNN
F 2 "" H 1950 3500 60  0000 C CNN
F 3 "" H 1950 3500 60  0000 C CNN
	1    1950 3500
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR1028
U 1 1 5241C9C6
P 2100 3600
F 0 "#PWR1028" H 2100 3560 30  0001 C CNN
F 1 "+3.3V" H 2100 3710 30  0000 C CNN
F 2 "" H 2100 3600 60  0000 C CNN
F 3 "" H 2100 3600 60  0000 C CNN
	1    2100 3600
	1    0    0    -1  
$EndComp
Text Label 1950 3700 0    60   ~ 0
ADC14
Text Label 2400 2400 0    60   ~ 0
ADC1
Text Label 2400 2600 0    60   ~ 0
ADC3
Text Label 2400 2500 0    60   ~ 0
ADC2
Text Label 2400 2700 0    60   ~ 0
ADC4
Text Label 2400 2800 0    60   ~ 0
ADC5
Text Label 2400 2900 0    60   ~ 0
ADC6
Text Label 2400 3000 0    60   ~ 0
ADC7
Text Label 2400 3100 0    60   ~ 0
ADC8
Text Label 2400 3200 0    60   ~ 0
ADC9
Text Label 2400 3300 0    60   ~ 0
ADC10
Text Label 2400 3400 0    60   ~ 0
ADC11
Text Label 2400 3500 0    60   ~ 0
ADC12
Text Label 2400 3600 0    60   ~ 0
ADC13
Text Label 2400 3700 0    60   ~ 0
ADC14
Text Notes 1400 7600 2    90   ~ 18
RESET
$Comp
L +5VA #PWR1038
U 1 1 523D8A67
P 4300 6900
F 0 "#PWR1038" H 4300 7030 20  0001 C CNN
F 1 "+5VA" H 4300 7000 30  0000 C CNN
F 2 "" H 4300 6900 60  0000 C CNN
F 3 "" H 4300 6900 60  0000 C CNN
	1    4300 6900
	0    1    1    0   
$EndComp
Connection ~ 2050 5500
Wire Wire Line
	5550 4200 4350 4200
Wire Wire Line
	4350 4100 5550 4100
Wire Wire Line
	5550 4000 4350 4000
Wire Wire Line
	4350 3900 5550 3900
Wire Wire Line
	5550 3800 4350 3800
Wire Wire Line
	4350 3700 5550 3700
Wire Wire Line
	5550 3600 4350 3600
Wire Wire Line
	4350 3500 5550 3500
Wire Wire Line
	10250 4400 10450 4400
Wire Wire Line
	10250 4300 10450 4300
Wire Wire Line
	10250 4200 10450 4200
Wire Wire Line
	10250 4100 10450 4100
Wire Wire Line
	10250 3950 10450 3950
Wire Wire Line
	10250 3850 10450 3850
Wire Wire Line
	10250 3750 10450 3750
Wire Wire Line
	10250 3650 10450 3650
Wire Wire Line
	10250 3500 10450 3500
Wire Wire Line
	10250 3400 10450 3400
Wire Wire Line
	10250 3300 10450 3300
Wire Wire Line
	10250 3200 10450 3200
Wire Wire Line
	10250 3050 10450 3050
Wire Wire Line
	10250 2950 10450 2950
Wire Wire Line
	10250 2850 10450 2850
Wire Wire Line
	10250 2750 10450 2750
Wire Wire Line
	7900 3800 6850 3800
Wire Wire Line
	7900 3450 7900 3800
Wire Wire Line
	9100 3450 7900 3450
Wire Wire Line
	7850 3350 9100 3350
Wire Wire Line
	7850 3700 7850 3350
Wire Wire Line
	6850 3700 7850 3700
Wire Wire Line
	7800 3600 6850 3600
Wire Wire Line
	7800 3250 7800 3600
Wire Wire Line
	9100 3250 7800 3250
Wire Wire Line
	7750 3150 9100 3150
Wire Wire Line
	7750 3500 7750 3150
Wire Wire Line
	6850 3500 7750 3500
Wire Wire Line
	7700 3050 9100 3050
Wire Wire Line
	7700 3400 7700 3050
Wire Wire Line
	6850 3400 7700 3400
Wire Wire Line
	7650 3300 6850 3300
Wire Wire Line
	7650 2950 7650 3300
Wire Wire Line
	9100 2950 7650 2950
Wire Wire Line
	7600 2850 9100 2850
Wire Wire Line
	7600 3200 7600 2850
Wire Wire Line
	6850 3200 7600 3200
Wire Wire Line
	7550 3100 6850 3100
Wire Wire Line
	7550 2750 7550 3100
Wire Wire Line
	9100 2750 7550 2750
Wire Wire Line
	2150 3700 1900 3700
Wire Wire Line
	2100 3600 1900 3600
Wire Wire Line
	1950 3500 1900 3500
Wire Wire Line
	2150 3350 1900 3350
Wire Wire Line
	2100 3250 1900 3250
Wire Wire Line
	1950 3150 1900 3150
Wire Wire Line
	2150 3000 1900 3000
Wire Wire Line
	2100 2900 1900 2900
Wire Wire Line
	1950 2800 1900 2800
Wire Wire Line
	2150 2650 1900 2650
Wire Wire Line
	2100 2550 1900 2550
Wire Wire Line
	1950 2450 1900 2450
Wire Wire Line
	2150 2300 1900 2300
Wire Wire Line
	2100 2200 1900 2200
Wire Wire Line
	1950 2100 1900 2100
Wire Wire Line
	2150 1950 1900 1950
Wire Wire Line
	2100 1850 1900 1850
Wire Wire Line
	1950 1750 1900 1750
Wire Wire Line
	2150 1600 1900 1600
Wire Wire Line
	2100 1500 1900 1500
Wire Wire Line
	1950 1400 1900 1400
Wire Notes Line
	600  4000 3550 4000
Wire Wire Line
	1350 3700 1100 3700
Wire Wire Line
	1300 3600 1100 3600
Wire Wire Line
	1150 3500 1100 3500
Wire Wire Line
	1350 3350 1100 3350
Wire Wire Line
	1300 3250 1100 3250
Wire Wire Line
	1150 3150 1100 3150
Wire Wire Line
	1350 3000 1100 3000
Wire Wire Line
	1300 2900 1100 2900
Wire Wire Line
	1150 2800 1100 2800
Wire Wire Line
	1350 2650 1100 2650
Wire Wire Line
	1300 2550 1100 2550
Wire Wire Line
	1150 2450 1100 2450
Wire Wire Line
	1350 2300 1100 2300
Wire Wire Line
	1300 2200 1100 2200
Wire Wire Line
	1150 2100 1100 2100
Wire Wire Line
	1350 1950 1100 1950
Wire Wire Line
	1300 1850 1100 1850
Wire Wire Line
	1150 1750 1100 1750
Wire Wire Line
	1350 1600 1100 1600
Wire Wire Line
	1300 1500 1100 1500
Wire Wire Line
	1150 1400 1100 1400
Wire Wire Line
	2750 3700 2350 3700
Wire Wire Line
	2750 3600 2350 3600
Wire Wire Line
	2750 3500 2350 3500
Wire Wire Line
	2750 3400 2350 3400
Wire Wire Line
	2750 3300 2350 3300
Wire Wire Line
	2750 3200 2350 3200
Wire Wire Line
	2750 3100 2350 3100
Wire Wire Line
	2750 3000 2350 3000
Wire Wire Line
	2750 2900 2350 2900
Wire Wire Line
	2750 2800 2350 2800
Wire Wire Line
	2750 2700 2350 2700
Wire Wire Line
	2750 2600 2350 2600
Wire Wire Line
	2750 2500 2350 2500
Wire Wire Line
	2750 2400 2350 2400
Wire Wire Line
	8750 4350 9100 4350
Wire Wire Line
	8750 4250 9100 4250
Wire Wire Line
	8750 4150 9100 4150
Wire Wire Line
	8750 4050 9100 4050
Wire Wire Line
	8750 3950 9100 3950
Wire Wire Line
	8750 3850 9100 3850
Wire Wire Line
	8750 3750 9100 3750
Wire Wire Line
	9100 3650 8750 3650
Wire Wire Line
	8750 4600 9100 4600
Wire Wire Line
	8750 4500 9100 4500
Wire Wire Line
	5550 4900 4350 4900
Wire Wire Line
	4350 4800 5550 4800
Wire Wire Line
	7150 6050 7150 6750
Wire Wire Line
	6850 6050 7150 6050
Wire Wire Line
	7050 6150 7050 6850
Wire Wire Line
	6850 6150 7050 6150
Wire Wire Line
	8200 2000 8150 2000
Wire Wire Line
	8600 2000 8650 2000
Wire Wire Line
	8400 1800 8400 2000
Wire Wire Line
	9450 1700 9700 1700
Wire Wire Line
	8400 1800 8650 1800
Wire Wire Line
	8400 1700 8650 1700
Wire Wire Line
	6850 2900 7350 2900
Wire Wire Line
	9800 900  9800 850 
Wire Wire Line
	8100 900  7950 900 
Wire Wire Line
	8400 1200 8650 1200
Wire Wire Line
	4200 6800 4250 6800
Wire Notes Line
	3650 6400 4500 6400
Wire Wire Line
	4200 6700 4300 6700
Wire Wire Line
	7450 1550 7700 1550
Wire Wire Line
	7300 5450 7350 5450
Wire Wire Line
	6850 5550 7350 5550
Wire Wire Line
	1350 5700 1350 5800
Wire Wire Line
	5550 3250 4350 3250
Connection ~ 5550 7550
Wire Wire Line
	5250 7550 5400 7550
Wire Wire Line
	5400 7550 5550 7550
Wire Wire Line
	5550 7550 5700 7550
Wire Wire Line
	5700 7550 5700 7500
Wire Wire Line
	5550 7200 5550 7150
Wire Wire Line
	5700 6850 5700 6750
Connection ~ 5250 7550
Wire Wire Line
	5250 7500 5250 7550
Wire Wire Line
	5250 7550 5250 7650
Wire Wire Line
	7150 6750 7350 6750
Wire Notes Line
	3750 2100 3750 1250
Wire Notes Line
	6250 5900 8500 5900
Wire Notes Line
	6250 4750 6250 5900
Wire Notes Line
	6250 4750 8500 4750
Wire Wire Line
	9700 1500 9450 1500
Wire Wire Line
	9700 1300 9450 1300
Wire Wire Line
	9700 1100 9450 1100
Wire Wire Line
	8400 1500 8650 1500
Wire Wire Line
	8400 1100 8650 1100
Wire Wire Line
	8400 900  8650 900 
Wire Wire Line
	7700 2150 7450 2150
Wire Wire Line
	7700 1950 7450 1950
Wire Wire Line
	7700 1750 7450 1750
Wire Bus Line
	7350 2400 6850 2400
Wire Wire Line
	7350 2700 6850 2700
Wire Wire Line
	7350 2600 6850 2600
Wire Wire Line
	2050 5500 2050 6250
Wire Wire Line
	2450 5700 2450 6250
Wire Notes Line
	600  1250 600  4000
Wire Notes Line
	3550 1250 600  1250
Wire Notes Line
	3550 4000 3550 1250
Wire Notes Line
	8500 5950 8500 6950
Wire Wire Line
	5550 5000 4350 5000
Wire Wire Line
	4350 4600 5550 4600
Wire Wire Line
	1550 5500 2050 5500
Wire Wire Line
	2050 5500 2750 5500
Wire Wire Line
	2250 6000 2250 6250
Wire Wire Line
	2750 5700 2450 5700
Wire Wire Line
	7300 6550 7350 6550
Wire Wire Line
	7350 5000 7300 5000
Wire Wire Line
	6850 5300 7350 5300
Wire Wire Line
	4350 4450 5550 4450
Wire Wire Line
	4350 4350 5550 4350
Wire Wire Line
	4350 3050 5550 3050
Wire Wire Line
	4350 2800 5550 2800
Wire Wire Line
	4350 2600 5550 2600
Wire Wire Line
	5550 2500 4350 2500
Wire Wire Line
	5550 2700 4350 2700
Wire Wire Line
	5550 3150 4350 3150
Wire Wire Line
	7350 5200 7300 5200
Wire Wire Line
	7350 6650 7300 6650
Wire Wire Line
	2350 5600 2750 5600
Wire Wire Line
	2150 6050 2150 6250
Wire Wire Line
	4350 4700 5550 4700
Wire Notes Line
	3550 5400 1650 5400
Wire Notes Line
	3550 7700 3550 5400
Wire Notes Line
	1650 7700 3550 7700
Wire Notes Line
	1650 5400 1650 7700
Wire Wire Line
	2350 6250 2350 5600
Wire Notes Line
	8500 4750 8500 5900
Wire Bus Line
	4350 2400 5550 2400
Wire Wire Line
	6850 2500 7350 2500
Wire Wire Line
	7350 2800 6850 2800
Wire Bus Line
	7350 1650 7350 1750
Wire Bus Line
	7350 1750 7350 1850
Wire Bus Line
	7350 1850 7350 1950
Wire Bus Line
	7350 1950 7350 2050
Wire Bus Line
	7350 2050 7350 2150
Wire Bus Line
	7350 2150 7350 2250
Wire Bus Line
	7350 2250 7350 2350
Wire Bus Line
	7350 2350 7350 2400
Wire Wire Line
	7700 1650 7450 1650
Wire Wire Line
	7700 1850 7450 1850
Wire Wire Line
	7700 2050 7450 2050
Wire Wire Line
	7700 2250 7450 2250
Wire Wire Line
	8400 1000 8650 1000
Wire Wire Line
	8400 1400 8650 1400
Wire Wire Line
	8400 1600 8650 1600
Wire Wire Line
	9800 900  9450 900 
Wire Wire Line
	9700 1000 9450 1000
Wire Wire Line
	9700 1200 9450 1200
Wire Wire Line
	9700 1400 9450 1400
Wire Wire Line
	9700 1600 9450 1600
Wire Notes Line
	6250 5950 8500 5950
Wire Notes Line
	6250 6950 6250 5950
Wire Notes Line
	8500 6950 6250 6950
Wire Notes Line
	6250 700  10200 700 
Wire Notes Line
	6250 700  6250 2850
Wire Wire Line
	6850 5100 7350 5100
Wire Wire Line
	7050 6850 7350 6850
Wire Wire Line
	5400 7550 5400 7500
Wire Wire Line
	5550 6850 5550 6750
Wire Wire Line
	5700 7150 5700 7200
Wire Wire Line
	5550 7550 5550 7500
Connection ~ 5400 7550
Wire Wire Line
	4350 3350 5550 3350
Wire Wire Line
	7350 5750 6850 5750
Wire Wire Line
	7300 5650 7350 5650
Wire Notes Line
	6000 2100 3750 2100
Wire Notes Line
	6000 1250 6000 2100
Wire Bus Line
	3750 1250 6000 1250
Wire Wire Line
	4200 7100 4300 7100
Wire Notes Line
	3650 7700 3650 6400
Wire Notes Line
	4500 7700 3650 7700
Wire Notes Line
	4500 6400 4500 7700
Wire Wire Line
	4200 7000 4250 7000
Wire Notes Line
	1600 5400 900  5400
Wire Notes Line
	900  5400 900  7700
Wire Notes Line
	900  7700 1600 7700
Wire Notes Line
	1600 7700 1600 5400
Wire Wire Line
	4300 6900 4200 6900
Wire Wire Line
	5250 7200 5250 7150
Wire Wire Line
	5400 7200 5400 7150
$Comp
L R R?
U 1 1 52440B0D
P 5250 6900
F 0 "R?" V 5200 7000 50  0000 C CNN
F 1 "R" V 5300 7000 50  0000 C CNN
F 2 "~" H 5250 6900 60  0000 C CNN
F 3 "~" H 5250 6900 60  0000 C CNN
	1    5250 6900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 52440B1C
P 5400 6900
F 0 "R?" V 5350 7000 50  0000 C CNN
F 1 "R" V 5450 7000 50  0000 C CNN
F 2 "~" H 5400 6900 60  0000 C CNN
F 3 "~" H 5400 6900 60  0000 C CNN
	1    5400 6900
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR?
U 1 1 52440B35
P 5550 6750
F 0 "#PWR?" H 5550 6880 20  0001 C CNN
F 1 "+5VA" H 5550 6850 30  0000 C CNN
F 2 "" H 5550 6750 60  0000 C CNN
F 3 "" H 5550 6750 60  0000 C CNN
	1    5550 6750
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 52440B44
P 5250 6750
F 0 "#PWR?" H 5250 6700 20  0001 C CNN
F 1 "+12V" H 5250 6850 30  0000 C CNN
F 2 "" H 5250 6750 60  0000 C CNN
F 3 "" H 5250 6750 60  0000 C CNN
	1    5250 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6750 5400 6850
Wire Wire Line
	5250 6750 5250 6850
Text Label 10450 2750 2    60   ~ 0
X1
Text Label 10450 2850 2    60   ~ 0
X2
Text Label 10450 2950 2    60   ~ 0
X3
Text Label 10450 3050 2    60   ~ 0
X4
Text Label 10450 3200 2    60   ~ 0
Y1
Text Label 10450 3300 2    60   ~ 0
Y2
Text Label 10450 3400 2    60   ~ 0
Y3
Text Label 10450 3500 2    60   ~ 0
Y4
Text Label 10450 3650 2    60   ~ 0
Y1A
Text Label 10450 3750 2    60   ~ 0
Y2A
Text Label 10450 3850 2    60   ~ 0
Y3A
Text Label 10450 3950 2    60   ~ 0
Y4A
Text Label 10450 4100 2    60   ~ 0
Y1B
Text Label 10450 4200 2    60   ~ 0
Y2B
Text Label 10450 4300 2    60   ~ 0
Y3B
Text Label 10450 4400 2    60   ~ 0
Y4B
$EndSCHEMATC
