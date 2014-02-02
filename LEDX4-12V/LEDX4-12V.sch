EESchema Schematic File Version 2
LIBS:power
LIBS:CEN-SCHEMA
LIBS:LEDX4-12V-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "LED X 4 - 12V"
Date "3 jul 2013"
Rev "V1-00"
Comp "F4DEB"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED D1003
U 1 1 51D1D6D3
P 5550 2950
F 0 "D1003" H 5550 3050 50  0000 C CNN
F 1 "LED" H 5550 2850 50  0000 C CNN
F 2 "" H 5550 2950 60  0000 C CNN
F 3 "" H 5550 2950 60  0000 C CNN
	1    5550 2950
	1    0    0    -1  
$EndComp
$Comp
L LED D1004
U 1 1 51D1D6E2
P 6550 2950
F 0 "D1004" H 6550 3050 50  0000 C CNN
F 1 "LED" H 6550 2850 50  0000 C CNN
F 2 "" H 6550 2950 60  0000 C CNN
F 3 "" H 6550 2950 60  0000 C CNN
	1    6550 2950
	1    0    0    -1  
$EndComp
$Comp
L LED D1002
U 1 1 51D1D6F1
P 4500 2950
F 0 "D1002" H 4500 3050 50  0000 C CNN
F 1 "LED" H 4500 2850 50  0000 C CNN
F 2 "" H 4500 2950 60  0000 C CNN
F 3 "" H 4500 2950 60  0000 C CNN
	1    4500 2950
	1    0    0    -1  
$EndComp
$Comp
L LED D1001
U 1 1 51D1D700
P 3500 2950
F 0 "D1001" H 3500 3050 50  0000 C CNN
F 1 "LED" H 3500 2850 50  0000 C CNN
F 2 "" H 3500 2950 60  0000 C CNN
F 3 "" H 3500 2950 60  0000 C CNN
	1    3500 2950
	1    0    0    -1  
$EndComp
$Comp
L R R1001
U 1 1 51D1D70F
P 3950 2950
F 0 "R1001" V 4000 2850 50  0000 C CNN
F 1 "10" V 3900 2850 50  0000 C CNN
F 2 "" H 3950 2950 60  0000 C CNN
F 3 "" H 3950 2950 60  0000 C CNN
	1    3950 2950
	0    -1   -1   0   
$EndComp
$Comp
L R R1002
U 1 1 51D1D71E
P 4950 2950
F 0 "R1002" V 5000 2850 50  0000 C CNN
F 1 "10" V 4900 2850 50  0000 C CNN
F 2 "" H 4950 2950 60  0000 C CNN
F 3 "" H 4950 2950 60  0000 C CNN
	1    4950 2950
	0    -1   -1   0   
$EndComp
$Comp
L R R1003
U 1 1 51D1D72D
P 5950 2950
F 0 "R1003" V 6000 2850 50  0000 C CNN
F 1 "10" V 5900 2850 50  0000 C CNN
F 2 "" H 5950 2950 60  0000 C CNN
F 3 "" H 5950 2950 60  0000 C CNN
	1    5950 2950
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 K1001
U 1 1 51D1D74B
P 7550 2950
F 0 "K1001" H 7850 3100 50  0000 C CNN
F 1 "CONN_2" H 7900 3050 40  0000 C CNN
F 2 "" H 7550 2950 60  0000 C CNN
F 3 "" H 7550 2950 60  0000 C CNN
	1    7550 2950
	1    0    0    -1  
$EndComp
$Comp
L R R1004
U 1 1 51D1D75A
P 7050 2950
F 0 "R1004" V 7100 2850 50  0000 C CNN
F 1 "10" V 7000 2850 50  0000 C CNN
F 2 "" H 7050 2950 60  0000 C CNN
F 3 "" H 7050 2950 60  0000 C CNN
	1    7050 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 2950 7550 2950
Wire Wire Line
	7000 2950 6700 2950
Wire Wire Line
	6400 2950 6200 2950
Wire Wire Line
	5700 2950 5900 2950
Wire Wire Line
	5400 2950 5200 2950
Wire Wire Line
	4900 2950 4650 2950
Wire Wire Line
	4350 2950 4200 2950
Wire Wire Line
	3900 2950 3650 2950
Wire Wire Line
	3350 2950 3300 2950
Wire Wire Line
	3300 2950 3300 3100
Wire Wire Line
	3300 3100 7550 3100
Wire Wire Line
	7550 3100 7550 3050
$Comp
L CONN_2 K1002
U 1 1 51D1D7F0
P 7550 3450
F 0 "K1002" H 7850 3600 50  0000 C CNN
F 1 "CONN_2" H 7900 3550 40  0000 C CNN
F 2 "" H 7550 3450 60  0000 C CNN
F 3 "" H 7550 3450 60  0000 C CNN
	1    7550 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2350 7350 3450
Wire Wire Line
	7350 3450 7550 3450
Connection ~ 7350 2950
Wire Wire Line
	7450 3100 7450 3600
Wire Wire Line
	7450 3550 7550 3550
Connection ~ 7450 3100
$Comp
L R R1010
U 1 1 51D32E65
P 4950 2750
F 0 "R1010" V 5000 2650 50  0000 C CNN
F 1 "10" V 4900 2650 50  0000 C CNN
F 2 "" H 4950 2750 60  0000 C CNN
F 3 "" H 4950 2750 60  0000 C CNN
	1    4950 2750
	0    -1   -1   0   
$EndComp
$Comp
L R R1009
U 1 1 51D32E72
P 4950 2550
F 0 "R1009" V 5000 2450 50  0000 C CNN
F 1 "10" V 4900 2450 50  0000 C CNN
F 2 "" H 4950 2550 60  0000 C CNN
F 3 "" H 4950 2550 60  0000 C CNN
	1    4950 2550
	0    -1   -1   0   
$EndComp
$Comp
L R R1008
U 1 1 51D32E78
P 4950 2350
F 0 "R1008" V 5000 2250 50  0000 C CNN
F 1 "10" V 4900 2250 50  0000 C CNN
F 2 "" H 4950 2350 60  0000 C CNN
F 3 "" H 4950 2350 60  0000 C CNN
	1    4950 2350
	0    -1   -1   0   
$EndComp
$Comp
L R R1013
U 1 1 51D32E7E
P 5950 2750
F 0 "R1013" V 6000 2650 50  0000 C CNN
F 1 "10" V 5900 2650 50  0000 C CNN
F 2 "" H 5950 2750 60  0000 C CNN
F 3 "" H 5950 2750 60  0000 C CNN
	1    5950 2750
	0    -1   -1   0   
$EndComp
$Comp
L R R1012
U 1 1 51D32E84
P 5950 2550
F 0 "R1012" V 6000 2450 50  0000 C CNN
F 1 "10" V 5900 2450 50  0000 C CNN
F 2 "" H 5950 2550 60  0000 C CNN
F 3 "" H 5950 2550 60  0000 C CNN
	1    5950 2550
	0    -1   -1   0   
$EndComp
$Comp
L R R1007
U 1 1 51D32E8A
P 3950 2750
F 0 "R1007" V 4000 2650 50  0000 C CNN
F 1 "10" V 3900 2650 50  0000 C CNN
F 2 "" H 3950 2750 60  0000 C CNN
F 3 "" H 3950 2750 60  0000 C CNN
	1    3950 2750
	0    -1   -1   0   
$EndComp
$Comp
L R R1006
U 1 1 51D32E90
P 3950 2550
F 0 "R1006" V 4000 2450 50  0000 C CNN
F 1 "10" V 3900 2450 50  0000 C CNN
F 2 "" H 3950 2550 60  0000 C CNN
F 3 "" H 3950 2550 60  0000 C CNN
	1    3950 2550
	0    -1   -1   0   
$EndComp
$Comp
L R R1005
U 1 1 51D32E96
P 3950 2350
F 0 "R1005" V 4000 2250 50  0000 C CNN
F 1 "10" V 3900 2250 50  0000 C CNN
F 2 "" H 3950 2350 60  0000 C CNN
F 3 "" H 3950 2350 60  0000 C CNN
	1    3950 2350
	0    -1   -1   0   
$EndComp
$Comp
L R R1011
U 1 1 51D32E9C
P 5950 2350
F 0 "R1011" V 6000 2250 50  0000 C CNN
F 1 "10" V 5900 2250 50  0000 C CNN
F 2 "" H 5950 2350 60  0000 C CNN
F 3 "" H 5950 2350 60  0000 C CNN
	1    5950 2350
	0    -1   -1   0   
$EndComp
$Comp
L R R1016
U 1 1 51D32EA2
P 7050 2750
F 0 "R1016" V 7100 2650 50  0000 C CNN
F 1 "10" V 7000 2650 50  0000 C CNN
F 2 "" H 7050 2750 60  0000 C CNN
F 3 "" H 7050 2750 60  0000 C CNN
	1    7050 2750
	0    -1   -1   0   
$EndComp
$Comp
L R R1015
U 1 1 51D32EA8
P 7050 2550
F 0 "R1015" V 7100 2450 50  0000 C CNN
F 1 "10" V 7000 2450 50  0000 C CNN
F 2 "" H 7050 2550 60  0000 C CNN
F 3 "" H 7050 2550 60  0000 C CNN
	1    7050 2550
	0    -1   -1   0   
$EndComp
$Comp
L R R1014
U 1 1 51D32EAE
P 7050 2350
F 0 "R1014" V 7100 2250 50  0000 C CNN
F 1 "10" V 7000 2250 50  0000 C CNN
F 2 "" H 7050 2350 60  0000 C CNN
F 3 "" H 7050 2350 60  0000 C CNN
	1    7050 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 2950 4250 2350
Wire Wire Line
	4250 2350 4200 2350
Connection ~ 4250 2950
Wire Wire Line
	3850 2950 3850 2350
Wire Wire Line
	3850 2350 3900 2350
Connection ~ 3850 2950
Wire Wire Line
	3900 2550 3850 2550
Connection ~ 3850 2550
Wire Wire Line
	4200 2550 4250 2550
Connection ~ 4250 2550
Wire Wire Line
	4200 2750 4250 2750
Connection ~ 4250 2750
Wire Wire Line
	3900 2750 3850 2750
Connection ~ 3850 2750
Wire Wire Line
	5250 2950 5250 2350
Wire Wire Line
	5250 2350 5200 2350
Connection ~ 5250 2950
Wire Wire Line
	4850 2950 4850 2350
Wire Wire Line
	4850 2350 4900 2350
Connection ~ 4850 2950
Wire Wire Line
	4850 2550 4900 2550
Connection ~ 4850 2550
Wire Wire Line
	4850 2750 4900 2750
Connection ~ 4850 2750
Wire Wire Line
	5200 2750 5250 2750
Connection ~ 5250 2750
Wire Wire Line
	5200 2550 5250 2550
Connection ~ 5250 2550
Wire Wire Line
	5850 2950 5850 2350
Wire Wire Line
	5850 2350 5900 2350
Connection ~ 5850 2950
Wire Wire Line
	5900 2550 5850 2550
Connection ~ 5850 2550
Wire Wire Line
	5900 2750 5850 2750
Connection ~ 5850 2750
Wire Wire Line
	6200 2350 6250 2350
Wire Wire Line
	6250 2350 6250 2950
Connection ~ 6250 2950
Wire Wire Line
	6200 2750 6250 2750
Connection ~ 6250 2750
Wire Wire Line
	6200 2550 6250 2550
Connection ~ 6250 2550
Wire Wire Line
	6950 2950 6950 2350
Wire Wire Line
	6950 2350 7000 2350
Connection ~ 6950 2950
Wire Wire Line
	7350 2350 7300 2350
Wire Wire Line
	7300 2550 7350 2550
Connection ~ 7350 2550
Wire Wire Line
	7300 2750 7350 2750
Connection ~ 7350 2750
Wire Wire Line
	7000 2550 6950 2550
Connection ~ 6950 2550
Wire Wire Line
	7000 2750 6950 2750
Connection ~ 6950 2750
Text Notes 7800 2650 0    60   ~ 0
12V 350mA
$Comp
L GND #PWR?
U 1 1 51D44B02
P 7450 3600
F 0 "#PWR?" H 7450 3600 30  0001 C CNN
F 1 "GND" H 7450 3530 30  0001 C CNN
F 2 "" H 7450 3600 60  0000 C CNN
F 3 "" H 7450 3600 60  0000 C CNN
	1    7450 3600
	1    0    0    -1  
$EndComp
Connection ~ 7450 3550
$EndSCHEMATC
