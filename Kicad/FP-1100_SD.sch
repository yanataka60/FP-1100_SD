EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 17000 14961
encoding utf-8
Sheet 1 1
Title "FP-1100_SD"
Date "2022-01-14"
Rev "Rev1.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	7400 2300 8250 2300
Wire Wire Line
	7400 2400 8250 2400
Wire Wire Line
	7400 2500 8250 2500
Wire Wire Line
	7400 2600 8250 2600
$Comp
L power:+5V #PWR04
U 1 1 61C53293
P 8650 1300
F 0 "#PWR04" H 8650 1150 50  0001 C CNN
F 1 "+5V" H 8665 1473 50  0000 C CNN
F 2 "" H 8650 1300 50  0001 C CNN
F 3 "" H 8650 1300 50  0001 C CNN
	1    8650 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 61CA5FA4
P 8650 3500
F 0 "#PWR05" H 8650 3250 50  0001 C CNN
F 1 "GND" H 8655 3327 50  0000 C CNN
F 2 "" H 8650 3500 50  0001 C CNN
F 3 "" H 8650 3500 50  0001 C CNN
	1    8650 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 61E99EF6
P 8300 3500
F 0 "C9" V 8150 3600 50  0000 C CNN
F 1 "0.1uF" V 8150 3350 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 8338 3350 50  0001 C CNN
F 3 "~" H 8300 3500 50  0001 C CNN
	1    8300 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8450 3500 8650 3500
Wire Wire Line
	8650 3400 8650 3500
$Comp
L power:PWR_FLAG #FLG02
U 1 1 626B92AA
P 1300 10350
F 0 "#FLG02" H 1300 10425 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 10523 50  0000 C CNN
F 2 "" H 1300 10350 50  0001 C CNN
F 3 "~" H 1300 10350 50  0001 C CNN
	1    1300 10350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 62901E30
P 1600 10250
F 0 "#PWR01" H 1600 10100 50  0001 C CNN
F 1 "+5V" H 1615 10423 50  0000 C CNN
F 2 "" H 1600 10250 50  0001 C CNN
F 3 "" H 1600 10250 50  0001 C CNN
	1    1600 10250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 10250 1600 10350
Wire Wire Line
	1300 10350 1600 10350
Connection ~ 1600 10350
Wire Wire Line
	8250 2700 7400 2700
$Comp
L Device:CP1 C11
U 1 1 61AFFCD6
P 1600 10500
F 0 "C11" H 1715 10546 50  0000 L CNN
F 1 "100uF" H 1715 10455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1600 10500 50  0001 C CNN
F 3 "~" H 1600 10500 50  0001 C CNN
	1    1600 10500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 61B04D1B
P 1600 10800
F 0 "#PWR02" H 1600 10550 50  0001 C CNN
F 1 "GND" H 1605 10627 50  0000 C CNN
F 2 "" H 1600 10800 50  0001 C CNN
F 3 "" H 1600 10800 50  0001 C CNN
	1    1600 10800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5200 9150 2200
Wire Wire Line
	10000 2200 9150 2200
Connection ~ 9150 2200
Wire Wire Line
	9050 2200 9150 2200
Wire Wire Line
	8650 9050 8900 9050
Wire Wire Line
	8900 3600 8900 9050
Text Label 1300 1700 0    50   ~ 0
+5V
Wire Wire Line
	4900 7300 10150 7300
Wire Wire Line
	4900 6600 6000 6600
Wire Wire Line
	10150 3300 10150 7300
Wire Wire Line
	10250 3300 10150 3300
Wire Wire Line
	10850 3300 11000 3300
Wire Wire Line
	12850 4000 12950 4000
Wire Wire Line
	12850 2600 12850 4000
Wire Wire Line
	12400 5800 14500 5800
Wire Wire Line
	12400 4200 12950 4200
Wire Wire Line
	12400 4300 12950 4300
Wire Wire Line
	12400 4400 12950 4400
Wire Wire Line
	12400 4500 12950 4500
Wire Wire Line
	12400 4600 12950 4600
Wire Wire Line
	12400 4700 12950 4700
Wire Wire Line
	12400 4800 12950 4800
Wire Wire Line
	12400 4900 12950 4900
Wire Wire Line
	9150 5200 11000 5200
Wire Wire Line
	9250 5100 11000 5100
Wire Wire Line
	9350 5000 11000 5000
Wire Wire Line
	9450 4900 11000 4900
Wire Wire Line
	9550 4800 11000 4800
Wire Wire Line
	9650 4700 11000 4700
Wire Wire Line
	9750 4600 11000 4600
Wire Wire Line
	9850 4500 11000 4500
Wire Wire Line
	10050 3800 11000 3800
Wire Wire Line
	9950 3700 11000 3700
Wire Wire Line
	8900 3600 11000 3600
Wire Wire Line
	9050 2100 9250 2100
Wire Wire Line
	9050 2000 9350 2000
Wire Wire Line
	9050 1900 9450 1900
Wire Wire Line
	9050 1800 9550 1800
Wire Wire Line
	9050 1700 9650 1700
Wire Wire Line
	9050 1600 9750 1600
Wire Wire Line
	9050 1500 9850 1500
Connection ~ 9250 2100
Wire Wire Line
	10000 2100 9250 2100
Connection ~ 9350 2000
Wire Wire Line
	10000 2000 9350 2000
Connection ~ 9450 1900
Wire Wire Line
	10000 1900 9450 1900
Connection ~ 9550 1800
Wire Wire Line
	10000 1800 9550 1800
Connection ~ 9650 1700
Wire Wire Line
	10000 1700 9650 1700
Connection ~ 9750 1600
Wire Wire Line
	10000 1600 9750 1600
Connection ~ 9850 1500
Wire Wire Line
	10000 1500 9850 1500
Wire Wire Line
	9250 5100 9250 2100
Wire Wire Line
	9350 5000 9350 2000
Wire Wire Line
	9450 4900 9450 1900
Wire Wire Line
	9550 4800 9550 1800
Wire Wire Line
	9650 4700 9650 1700
Wire Wire Line
	9750 4600 9750 1600
Wire Wire Line
	9850 4500 9850 1500
Wire Wire Line
	15200 4600 14150 4600
Wire Wire Line
	15200 2900 15200 4600
Wire Wire Line
	13700 2900 15200 2900
Wire Wire Line
	13700 1900 13700 2900
Wire Wire Line
	14300 1900 13700 1900
Wire Wire Line
	15100 4700 14150 4700
Wire Wire Line
	15100 3000 15100 4700
Wire Wire Line
	13800 3000 15100 3000
Wire Wire Line
	13800 2000 13800 3000
Wire Wire Line
	14300 2000 13800 2000
Wire Wire Line
	15000 4800 14150 4800
Wire Wire Line
	15000 3100 15000 4800
Wire Wire Line
	13900 3100 15000 3100
Wire Wire Line
	13900 2100 13900 3100
Wire Wire Line
	14300 2100 13900 2100
Wire Wire Line
	14900 4900 14150 4900
Wire Wire Line
	14900 3200 14900 4900
Wire Wire Line
	14000 3200 14900 3200
Wire Wire Line
	14000 2200 14000 3200
Wire Wire Line
	14300 2200 14000 2200
Wire Wire Line
	12400 3300 14600 3300
Wire Wire Line
	12400 3400 14500 3400
Wire Wire Line
	12400 3500 12750 3500
Wire Wire Line
	12400 3600 12650 3600
$Comp
L Memory_RAM2:Micro_SD_Card_Kit J3
U 1 1 6188B7C4
P 15200 1800
F 0 "J3" H 14700 2500 50  0000 L CNN
F 1 "Micro_SD_Card_Kit" H 15200 2500 50  0000 L CNN
F 2 "Kicad:AE-microSD-LLCNV" H 16350 2100 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 15200 1800 50  0001 C CNN
	1    15200 1800
	1    0    0    -1  
$EndComp
NoConn ~ 14300 1600
NoConn ~ 14300 1700
NoConn ~ 14300 2300
$Comp
L power:+5V #PWR08
U 1 1 625CD0DA
P 14150 1350
F 0 "#PWR08" H 14150 1200 50  0001 C CNN
F 1 "+5V" H 14165 1523 50  0000 C CNN
F 2 "" H 14150 1350 50  0001 C CNN
F 3 "" H 14150 1350 50  0001 C CNN
	1    14150 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	14150 1350 14150 1500
Wire Wire Line
	14150 1500 14300 1500
$Comp
L power:GND #PWR09
U 1 1 625DAB5A
P 14150 2450
F 0 "#PWR09" H 14150 2200 50  0001 C CNN
F 1 "GND" H 14155 2277 50  0000 C CNN
F 2 "" H 14150 2450 50  0001 C CNN
F 3 "" H 14150 2450 50  0001 C CNN
	1    14150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	14300 1800 14150 1800
Wire Wire Line
	14150 1800 14150 2450
Wire Wire Line
	14350 4100 14350 3800
Wire Wire Line
	14150 4100 14350 4100
NoConn ~ 12950 3800
NoConn ~ 12950 3900
NoConn ~ 12950 4100
NoConn ~ 13450 5300
NoConn ~ 13550 5300
NoConn ~ 14150 4000
NoConn ~ 14150 3800
NoConn ~ 12400 5700
NoConn ~ 12400 5600
NoConn ~ 12400 5500
NoConn ~ 12400 5400
NoConn ~ 12400 5200
NoConn ~ 12400 5100
NoConn ~ 12400 4000
NoConn ~ 12400 3900
NoConn ~ 12400 3800
NoConn ~ 12400 3700
$Comp
L power:+5V #PWR011
U 1 1 621E99AD
P 14350 3800
F 0 "#PWR011" H 14350 3650 50  0001 C CNN
F 1 "+5V" H 14365 3973 50  0000 C CNN
F 2 "" H 14350 3800 50  0001 C CNN
F 3 "" H 14350 3800 50  0001 C CNN
	1    14350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 3900 14250 5100
Wire Wire Line
	14150 3900 14250 3900
$Comp
L power:GND #PWR010
U 1 1 621A9C99
P 14250 5100
F 0 "#PWR010" H 14250 4850 50  0001 C CNN
F 1 "GND" H 14255 4927 50  0000 C CNN
F 2 "" H 14250 5100 50  0001 C CNN
F 3 "" H 14250 5100 50  0001 C CNN
	1    14250 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13750 5500 13750 5300
Wire Wire Line
	12650 5500 13750 5500
Wire Wire Line
	12650 3600 12650 5500
Wire Wire Line
	13650 5400 13650 5300
Wire Wire Line
	12750 5400 13650 5400
Wire Wire Line
	12750 3500 12750 5400
Wire Wire Line
	14500 4200 14150 4200
Wire Wire Line
	14500 3400 14500 4200
Wire Wire Line
	14600 4300 14150 4300
Wire Wire Line
	14600 3300 14600 4300
Wire Wire Line
	14600 4400 14150 4400
Wire Wire Line
	14600 5900 14600 4400
Wire Wire Line
	12550 5900 14600 5900
Wire Wire Line
	12550 5300 12550 5900
Wire Wire Line
	12400 5300 12550 5300
Wire Wire Line
	14500 4500 14150 4500
Wire Wire Line
	14500 5800 14500 4500
Connection ~ 11700 3000
$Comp
L power:+5V #PWR06
U 1 1 61F63930
P 11700 3000
F 0 "#PWR06" H 11700 2850 50  0001 C CNN
F 1 "+5V" H 11715 3173 50  0000 C CNN
F 2 "" H 11700 3000 50  0001 C CNN
F 3 "" H 11700 3000 50  0001 C CNN
	1    11700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 3000 11700 3000
Wire Wire Line
	10950 6250 10950 3000
Wire Wire Line
	11050 6250 10950 6250
Connection ~ 11700 6250
Wire Wire Line
	11700 6200 11700 6250
Wire Wire Line
	11700 6250 11700 6300
Wire Wire Line
	11350 6250 11700 6250
$Comp
L power:GND #PWR07
U 1 1 61F38F70
P 11700 6300
F 0 "#PWR07" H 11700 6050 50  0001 C CNN
F 1 "GND" H 11705 6127 50  0000 C CNN
F 2 "" H 11700 6300 50  0001 C CNN
F 3 "" H 11700 6300 50  0001 C CNN
	1    11700 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 61F2D5C6
P 11200 6250
F 0 "C10" V 11050 6350 50  0000 C CNN
F 1 "0.1uF" V 11050 6100 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 11238 6100 50  0001 C CNN
F 3 "~" H 11200 6250 50  0001 C CNN
	1    11200 6250
	0    -1   -1   0   
$EndComp
$Comp
L Interface:8255 U10
U 1 1 618A36EE
P 11700 4600
F 0 "U10" H 11300 6100 50  0000 C CNN
F 1 "8255" H 12100 6100 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_LongPads" H 11700 4900 50  0001 C CNN
F 3 "http://aturing.umcs.maine.edu/~meadow/courses/cos335/Intel8255A.pdf" H 11700 4900 50  0001 C CNN
	1    11700 4600
	1    0    0    -1  
$EndComp
$Comp
L Arduino:Arduino_Pro_Mini U11
U 1 1 61A254A8
P 13550 4400
F 0 "U11" H 13550 5289 60  0000 C CNN
F 1 "Arduino_Pro_Mini_5V" H 13550 5183 60  0000 C CNN
F 2 "Kicad:Arduino_Pro_Mini" H 14350 3650 60  0001 C CNN
F 3 "https://www.sparkfun.com/products/11113" H 13750 3200 60  0001 C CNN
	1    13550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 10350 1600 10350
Wire Wire Line
	1300 1700 1500 1700
Text Label 10000 1500 0    50   ~ 0
D0
Text Label 10000 1600 0    50   ~ 0
D1
Text Label 10000 1700 0    50   ~ 0
D2
Text Label 10000 1800 0    50   ~ 0
D3
Text Label 10000 1900 0    50   ~ 0
D4
Text Label 10000 2000 0    50   ~ 0
D5
Text Label 10000 2100 0    50   ~ 0
D6
Text Label 10000 2200 0    50   ~ 0
D7
Text Label 7400 1500 0    50   ~ 0
A0
Text Label 7400 1600 0    50   ~ 0
A1
Text Label 7400 1700 0    50   ~ 0
A2
Text Label 7400 1800 0    50   ~ 0
A3
Text Label 7400 1900 0    50   ~ 0
A4
Text Label 7400 2000 0    50   ~ 0
A5
Text Label 7400 2100 0    50   ~ 0
A6
Text Label 7400 2200 0    50   ~ 0
A7
Text Label 4900 6600 0    50   ~ 0
~WR
Text Label 1800 10350 0    50   ~ 0
Vcc
Text Label 7400 2300 0    50   ~ 0
A8
Text Label 7400 2400 0    50   ~ 0
A9
Text Label 7400 2500 0    50   ~ 0
A10
Text Label 7400 2600 0    50   ~ 0
A11
Text Label 7400 2700 0    50   ~ 0
A12
Text Label 4900 7300 0    50   ~ 0
~RESET
Wire Wire Line
	1000 10550 1000 10700
$Comp
L power:PWR_FLAG #FLG01
U 1 1 61C4340B
P 1000 10550
F 0 "#FLG01" H 1000 10625 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 10650 50  0000 C CNN
F 2 "" H 1000 10550 50  0001 C CNN
F 3 "~" H 1000 10550 50  0001 C CNN
	1    1000 10550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 10700 1600 10700
Wire Wire Line
	1600 10700 1600 10650
Wire Wire Line
	1600 10700 1600 10800
Connection ~ 1600 10700
$Comp
L Connector_Generic:Conn_01x06 J4
U 1 1 63237747
P 16150 3200
F 0 "J4" H 16100 2750 50  0000 L CNN
F 1 "MicroSD Card Adapter" H 15650 2600 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 16150 3200 50  0001 C CNN
F 3 "~" H 16150 3200 50  0001 C CNN
	1    16150 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	15950 3000 15650 3000
Wire Wire Line
	15950 3100 15650 3100
Wire Wire Line
	15950 3200 15650 3200
Wire Wire Line
	15950 3300 15650 3300
Wire Wire Line
	15950 3400 15650 3400
Wire Wire Line
	15950 3500 15650 3500
Text Label 15650 3000 0    50   ~ 0
GND
Text Label 15650 3100 0    50   ~ 0
+5V
Text Label 15650 3200 0    50   ~ 0
MISO
Text Label 15650 3300 0    50   ~ 0
MOSI
Text Label 15650 3400 0    50   ~ 0
SCK
Text Label 15650 3500 0    50   ~ 0
CS
Text Label 13700 1900 0    50   ~ 0
SCK
Text Label 13800 2000 0    50   ~ 0
MISO
Text Label 13900 2100 0    50   ~ 0
MOSI
Text Label 14000 2200 0    50   ~ 0
CS
Wire Wire Line
	11050 2600 10850 2600
Wire Wire Line
	10850 2600 10850 3300
Wire Wire Line
	11650 2600 12850 2600
Wire Wire Line
	7850 3300 8250 3300
Connection ~ 8650 3500
Text Label 1300 1800 0    50   ~ 0
+5V
Wire Wire Line
	1300 1800 1500 1800
Text Label 1300 1900 0    50   ~ 0
+12V
Wire Wire Line
	1300 1900 1500 1900
Text Label 1300 2000 0    50   ~ 0
~PSL
Wire Wire Line
	1300 2000 1500 2000
Text Label 1300 2100 0    50   ~ 0
~BSL
Wire Wire Line
	1300 2100 1500 2100
Text Label 1300 2200 0    50   ~ 0
~REQ
Wire Wire Line
	1300 2200 1500 2200
Text Label 1300 2300 0    50   ~ 0
~RD
Wire Wire Line
	1300 2300 1500 2300
Text Label 1300 2400 0    50   ~ 0
~CS
Wire Wire Line
	1300 2400 1500 2400
Text Label 1300 2600 0    50   ~ 0
~NMI
Wire Wire Line
	1300 2600 1500 2600
Text Label 1300 2700 0    50   ~ 0
~INTA
Wire Wire Line
	1300 2700 1500 2700
Text Label 1300 2800 0    50   ~ 0
~INTC
Wire Wire Line
	1300 2800 1500 2800
Text Label 1300 2900 0    50   ~ 0
D0
Wire Wire Line
	1300 2900 1500 2900
Text Label 1300 3000 0    50   ~ 0
D2
Wire Wire Line
	1300 3000 1500 3000
Text Label 1300 3100 0    50   ~ 0
D4
Wire Wire Line
	1300 3100 1500 3100
Text Label 1300 3200 0    50   ~ 0
D6
Wire Wire Line
	1300 3200 1500 3200
Text Label 1300 3300 0    50   ~ 0
~A0
Wire Wire Line
	1300 3300 1500 3300
Text Label 1300 3400 0    50   ~ 0
~A2
Wire Wire Line
	1300 3400 1500 3400
Text Label 1300 3500 0    50   ~ 0
~A4
Wire Wire Line
	1300 3500 1500 3500
Text Label 1300 3600 0    50   ~ 0
~A6
Wire Wire Line
	1300 3600 1500 3600
Text Label 1300 3700 0    50   ~ 0
~A8
Wire Wire Line
	1300 3700 1500 3700
Text Label 1300 3800 0    50   ~ 0
~A10
Wire Wire Line
	1300 3800 1500 3800
Text Label 1300 3900 0    50   ~ 0
~A12
Wire Wire Line
	1300 3900 1500 3900
Text Label 1300 4000 0    50   ~ 0
~A14
Wire Wire Line
	1300 4000 1500 4000
Text Label 1300 4100 0    50   ~ 0
-12V
Wire Wire Line
	1300 4100 1500 4100
Text Label 1300 4200 0    50   ~ 0
+5V
Wire Wire Line
	1300 4200 1500 4200
Text Label 1300 4300 0    50   ~ 0
+5V
Wire Wire Line
	1300 4300 1500 4300
Text Label 2000 1700 0    50   ~ 0
GND
Wire Wire Line
	2000 1700 2150 1700
Text Label 2000 1800 0    50   ~ 0
GND
Wire Wire Line
	2000 1800 2150 1800
Text Label 2000 1900 0    50   ~ 0
+12V
Wire Wire Line
	2000 1900 2150 1900
Text Label 2000 2000 0    50   ~ 0
CLOCK
Wire Wire Line
	2000 2000 2150 2000
Text Label 2000 2100 0    50   ~ 0
~RESET
Wire Wire Line
	2000 2100 2150 2100
Text Label 2000 2200 0    50   ~ 0
~REQD
Wire Wire Line
	2000 2200 2150 2200
Text Label 2000 2300 0    50   ~ 0
~WR
Wire Wire Line
	2000 2300 2150 2300
Text Label 2000 2600 0    50   ~ 0
~LPS
Wire Wire Line
	2000 2600 2150 2600
Text Label 2000 2700 0    50   ~ 0
~INTB
Wire Wire Line
	2000 2700 2150 2700
Text Label 2000 2800 0    50   ~ 0
~INTD
Wire Wire Line
	2000 2800 2150 2800
Text Label 2000 2900 0    50   ~ 0
D1
Wire Wire Line
	2000 2900 2150 2900
Text Label 2000 3000 0    50   ~ 0
D3
Wire Wire Line
	2000 3000 2150 3000
Text Label 2000 3100 0    50   ~ 0
D5
Wire Wire Line
	2000 3100 2150 3100
Text Label 2000 3200 0    50   ~ 0
D7
Wire Wire Line
	2000 3200 2150 3200
Text Label 2000 3300 0    50   ~ 0
~A1
Wire Wire Line
	2000 3300 2150 3300
Text Label 2000 3400 0    50   ~ 0
~A3
Wire Wire Line
	2000 3400 2150 3400
Text Label 2000 3500 0    50   ~ 0
~A5
Wire Wire Line
	2000 3500 2150 3500
Text Label 2000 3600 0    50   ~ 0
~A7
Wire Wire Line
	2000 3600 2150 3600
Text Label 2000 3700 0    50   ~ 0
~A9
Wire Wire Line
	2000 3700 2150 3700
Text Label 2000 3800 0    50   ~ 0
~A11
Wire Wire Line
	2000 3800 2150 3800
Text Label 2000 3900 0    50   ~ 0
~A13
Wire Wire Line
	2000 3900 2150 3900
Text Label 2000 4000 0    50   ~ 0
~A15
Wire Wire Line
	2000 4000 2150 4000
Text Label 2000 4100 0    50   ~ 0
-5V
Wire Wire Line
	2000 4100 2150 4100
Text Label 2000 4200 0    50   ~ 0
GND
Wire Wire Line
	2000 4200 2150 4200
Text Label 2000 4300 0    50   ~ 0
GND
Wire Wire Line
	2000 4300 2150 4300
$Comp
L Connector_Generic:Conn_02x28_Row_Letter_First J1
U 1 1 686B30C0
P 1700 3000
F 0 "J1" H 1750 4517 50  0000 C CNN
F 1 "FP-1100_BUS" H 1750 1450 50  0000 C CNN
F 2 "FP-1100:BUS_56Pin" H 1700 3000 50  0001 C CNN
F 3 "~" H 1700 3000 50  0001 C CNN
	1    1700 3000
	1    0    0    -1  
$EndComp
NoConn ~ 1500 2500
NoConn ~ 2000 2400
NoConn ~ 2000 2500
NoConn ~ 2000 4400
NoConn ~ 1500 4400
$Comp
L 74xx:74LS04 U1
U 1 1 684DC182
P 3350 1950
F 0 "U1" H 3350 2267 50  0000 C CNN
F 1 "74LS04" H 3350 2176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 1950 50  0001 C CNN
	1    3350 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 2 1 684DCAC3
P 3350 2600
F 0 "U1" H 3350 2917 50  0000 C CNN
F 1 "74LS04" H 3350 2826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 2600 50  0001 C CNN
	2    3350 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 3 1 684DE200
P 3350 3200
F 0 "U1" H 3350 3517 50  0000 C CNN
F 1 "74LS04" H 3350 3426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 3200 50  0001 C CNN
	3    3350 3200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 4 1 684DF5BF
P 3350 3850
F 0 "U1" H 3350 4167 50  0000 C CNN
F 1 "74LS04" H 3350 4076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 3850 50  0001 C CNN
	4    3350 3850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 5 1 684E101E
P 3350 4500
F 0 "U1" H 3350 4817 50  0000 C CNN
F 1 "74LS04" H 3350 4726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 4500 50  0001 C CNN
	5    3350 4500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 6 1 684E2222
P 3350 5100
F 0 "U1" H 3350 5417 50  0000 C CNN
F 1 "74LS04" H 3350 5326 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 5100 50  0001 C CNN
	6    3350 5100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 7 1 684E332D
P 2500 13400
F 0 "U1" H 2150 13800 50  0000 L CNN
F 1 "74LS04" H 2100 13050 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 2500 13400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2500 13400 50  0001 C CNN
	7    2500 13400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 1 1 6853B8DE
P 3350 5800
F 0 "U2" H 3350 6117 50  0000 C CNN
F 1 "74LS04" H 3350 6026 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 5800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 5800 50  0001 C CNN
	1    3350 5800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 2 1 6853B8E4
P 3350 6450
F 0 "U2" H 3350 6767 50  0000 C CNN
F 1 "74LS04" H 3350 6676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 6450 50  0001 C CNN
	2    3350 6450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 3 1 6853B8EA
P 3350 7050
F 0 "U2" H 3350 7367 50  0000 C CNN
F 1 "74LS04" H 3350 7276 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 7050 50  0001 C CNN
	3    3350 7050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 4 1 6853B8F0
P 3350 7700
F 0 "U2" H 3350 8017 50  0000 C CNN
F 1 "74LS04" H 3350 7926 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 7700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 7700 50  0001 C CNN
	4    3350 7700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 5 1 6853B8F6
P 3350 8350
F 0 "U2" H 3350 8667 50  0000 C CNN
F 1 "74LS04" H 3350 8576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 8350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 8350 50  0001 C CNN
	5    3350 8350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 6 1 6853B8FC
P 3350 8950
F 0 "U2" H 3350 9267 50  0000 C CNN
F 1 "74LS04" H 3350 9176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 8950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 8950 50  0001 C CNN
	6    3350 8950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U3
U 1 1 68561075
P 3350 9600
F 0 "U3" H 3350 9917 50  0000 C CNN
F 1 "74LS04" H 3350 9826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 9600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 9600 50  0001 C CNN
	1    3350 9600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U3
U 2 1 6856107B
P 3350 10250
F 0 "U3" H 3350 10567 50  0000 C CNN
F 1 "74LS04" H 3350 10476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 10250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 10250 50  0001 C CNN
	2    3350 10250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U3
U 3 1 68561081
P 3350 10850
F 0 "U3" H 3350 11167 50  0000 C CNN
F 1 "74LS04" H 3350 11076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 10850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 10850 50  0001 C CNN
	3    3350 10850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U3
U 4 1 68561087
P 3350 11500
F 0 "U3" H 3350 11817 50  0000 C CNN
F 1 "74LS04" H 3350 11726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3350 11500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3350 11500 50  0001 C CNN
	4    3350 11500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 7 1 685C82FA
P 3550 13400
F 0 "U2" H 3250 13800 50  0000 L CNN
F 1 "74LS04" H 3150 13050 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3550 13400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3550 13400 50  0001 C CNN
	7    3550 13400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U3
U 7 1 685EA6AD
P 4550 13400
F 0 "U3" H 4250 13800 50  0000 L CNN
F 1 "74LS04" H 4150 13050 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4550 13400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4550 13400 50  0001 C CNN
	7    4550 13400
	1    0    0    -1  
$EndComp
Text Label 2850 1950 0    50   ~ 0
~A0
Wire Wire Line
	2850 1950 3050 1950
Text Label 3650 1950 0    50   ~ 0
A0
Wire Wire Line
	3650 1950 3800 1950
Text Label 2850 2600 0    50   ~ 0
~A1
Wire Wire Line
	2850 2600 3050 2600
Text Label 2850 3200 0    50   ~ 0
~A2
Wire Wire Line
	2850 3200 3050 3200
Text Label 2850 3850 0    50   ~ 0
~A3
Wire Wire Line
	2850 3850 3050 3850
Text Label 2850 4500 0    50   ~ 0
~A4
Wire Wire Line
	2850 4500 3050 4500
Text Label 2850 5100 0    50   ~ 0
~A5
Wire Wire Line
	2850 5100 3050 5100
Text Label 2850 5800 0    50   ~ 0
~A6
Wire Wire Line
	2850 5800 3050 5800
Text Label 2850 6450 0    50   ~ 0
~A7
Wire Wire Line
	2850 6450 3050 6450
Text Label 2850 7050 0    50   ~ 0
~A8
Wire Wire Line
	2850 7050 3050 7050
Text Label 2850 7700 0    50   ~ 0
~A9
Wire Wire Line
	2850 7700 3050 7700
Text Label 2850 8350 0    50   ~ 0
~A10
Wire Wire Line
	2850 8350 3050 8350
Text Label 2850 8950 0    50   ~ 0
~A11
Wire Wire Line
	2850 8950 3050 8950
Text Label 2850 9600 0    50   ~ 0
~A12
Wire Wire Line
	2850 9600 3050 9600
Text Label 2850 10250 0    50   ~ 0
~A13
Wire Wire Line
	2850 10250 3050 10250
Text Label 2850 10850 0    50   ~ 0
~A14
Wire Wire Line
	2850 10850 3050 10850
Text Label 2850 11500 0    50   ~ 0
~A15
Wire Wire Line
	2850 11500 3050 11500
Text Label 3650 2600 0    50   ~ 0
A1
Wire Wire Line
	3650 2600 3800 2600
Text Label 3650 3200 0    50   ~ 0
A2
Wire Wire Line
	3650 3200 3800 3200
Text Label 3650 3850 0    50   ~ 0
A3
Wire Wire Line
	3650 3850 3800 3850
Text Label 3650 4500 0    50   ~ 0
A4
Wire Wire Line
	3650 4500 3800 4500
Text Label 3650 5100 0    50   ~ 0
A5
Wire Wire Line
	3650 5100 3800 5100
Text Label 3650 5800 0    50   ~ 0
A6
Wire Wire Line
	3650 5800 3800 5800
Text Label 3650 6450 0    50   ~ 0
A7
Wire Wire Line
	3650 6450 3800 6450
Text Label 3650 7050 0    50   ~ 0
A8
Wire Wire Line
	3650 7050 3800 7050
Text Label 3650 7700 0    50   ~ 0
A9
Wire Wire Line
	3650 7700 3800 7700
Text Label 3650 8350 0    50   ~ 0
A10
Wire Wire Line
	3650 8350 3800 8350
Text Label 3650 8950 0    50   ~ 0
A11
Wire Wire Line
	3650 8950 3800 8950
Text Label 3650 9600 0    50   ~ 0
A12
Wire Wire Line
	3650 9600 3800 9600
Text Label 3650 10250 0    50   ~ 0
A13
Wire Wire Line
	3650 10250 3800 10250
Text Label 3650 10850 0    50   ~ 0
A14
Wire Wire Line
	3650 10850 3800 10850
Text Label 3650 11500 0    50   ~ 0
A15
Wire Wire Line
	3650 11500 3800 11500
$Comp
L 74xx:74LS30 U8
U 1 1 68A2A3AD
P 6900 3500
F 0 "U8" H 6900 4025 50  0000 C CNN
F 1 "74LS30" H 6900 3934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6900 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 6900 3500 50  0001 C CNN
	1    6900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3200 4950 3200
Text Label 4950 3200 0    50   ~ 0
~A14
Wire Wire Line
	6600 3300 4950 3300
Text Label 4950 3300 0    50   ~ 0
~A15
Wire Wire Line
	6600 3400 4950 3400
Text Label 4950 3400 0    50   ~ 0
PSL
Wire Wire Line
	6600 3500 4950 3500
Text Label 4950 3500 0    50   ~ 0
REQD
Wire Wire Line
	8250 3200 7400 3200
Wire Wire Line
	7400 3200 7400 3500
Wire Wire Line
	7400 3500 7200 3500
$Comp
L 74xx:74LS02 U4
U 1 1 68CBE2C2
P 6250 4400
F 0 "U4" H 6250 4725 50  0000 C CNN
F 1 "74LS02" H 6250 4634 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6250 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 6250 4400 50  0001 C CNN
	1    6250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4300 4950 4300
Text Label 4950 4300 0    50   ~ 0
~RD
Wire Wire Line
	5950 4500 4950 4500
Text Label 4950 4500 0    50   ~ 0
~REQD
Wire Wire Line
	7850 3300 7850 4400
Wire Wire Line
	7850 4400 7150 4400
Wire Wire Line
	7400 1500 8250 1500
Wire Wire Line
	7400 1600 8250 1600
Text Label 10500 4100 0    50   ~ 0
A0
Text Label 10500 4200 0    50   ~ 0
A1
Wire Wire Line
	10500 4100 11000 4100
Wire Wire Line
	10500 4200 11000 4200
Wire Wire Line
	9950 3700 9950 4400
Wire Wire Line
	9950 4400 7850 4400
Connection ~ 7850 4400
$Comp
L 74xx:74LS02 U4
U 2 1 6907FE3F
P 6850 4400
F 0 "U4" H 6850 4725 50  0000 C CNN
F 1 "74LS02" H 6850 4634 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6850 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 6850 4400 50  0001 C CNN
	2    6850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 6700 7200 6700
Wire Wire Line
	10050 3800 10050 6700
Wire Wire Line
	6000 6800 4900 6800
Text Label 4900 6800 0    50   ~ 0
~REQD
Wire Wire Line
	7400 1700 8250 1700
Wire Wire Line
	7400 1800 8250 1800
Wire Wire Line
	7400 1900 8250 1900
Wire Wire Line
	7400 2000 8250 2000
Wire Wire Line
	7400 2100 8250 2100
Wire Wire Line
	7400 2200 8250 2200
$Comp
L 74xx:74LS04 U3
U 6 1 68561093
P 11350 2600
F 0 "U3" H 11350 2917 50  0000 C CNN
F 1 "74LS04" H 11350 2826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 11350 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 11350 2600 50  0001 C CNN
	6    11350 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U3
U 5 1 6856108D
P 10550 3300
F 0 "U3" H 10550 3617 50  0000 C CNN
F 1 "74LS04" H 10550 3526 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 10550 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 10550 3300 50  0001 C CNN
	5    10550 3300
	1    0    0    -1  
$EndComp
Connection ~ 10850 3300
$Comp
L 74xx:74LS02 U5
U 3 1 69576254
P 6300 6700
F 0 "U5" H 6300 7025 50  0000 C CNN
F 1 "74LS02" H 6300 6934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6300 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 6300 6700 50  0001 C CNN
	3    6300 6700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U5
U 4 1 695FAB45
P 6900 6700
F 0 "U5" H 6900 7025 50  0000 C CNN
F 1 "74LS02" H 6900 6934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6900 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 6900 6700 50  0001 C CNN
	4    6900 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4300 6550 4400
Connection ~ 6550 4400
Wire Wire Line
	6550 4400 6550 4500
Wire Wire Line
	6600 6600 6600 6700
Connection ~ 6600 6700
Wire Wire Line
	6600 6700 6600 6800
$Comp
L 74xx:74LS02 U4
U 5 1 69658484
P 5600 13400
F 0 "U4" H 5300 13800 50  0000 L CNN
F 1 "74LS02" H 5200 13050 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5600 13400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 5600 13400 50  0001 C CNN
	5    5600 13400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS30 U6
U 1 1 621DA5E3
P 6850 8950
F 0 "U6" H 6850 9475 50  0000 C CNN
F 1 "74LS30" H 6850 9384 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6850 8950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 6850 8950 50  0001 C CNN
	1    6850 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 8950 4900 8950
Text Label 4900 8950 0    50   ~ 0
A13
Wire Wire Line
	6550 9050 4900 9050
Text Label 4900 9050 0    50   ~ 0
A14
Wire Wire Line
	6550 9150 4900 9150
Text Label 4900 9150 0    50   ~ 0
A15
Wire Wire Line
	6550 9250 4900 9250
Text Label 4900 9250 0    50   ~ 0
PSL
Wire Wire Line
	6550 9350 4900 9350
Text Label 4900 9350 0    50   ~ 0
REQD
Wire Wire Line
	4900 10650 6550 10650
Wire Wire Line
	4900 10750 6550 10750
Wire Wire Line
	4900 8650 6550 8650
Wire Wire Line
	4900 8750 6550 8750
Wire Wire Line
	6550 8850 4900 8850
Text Label 4900 10050 0    50   ~ 0
~A2
Text Label 4900 10150 0    50   ~ 0
~A3
Text Label 4900 10250 0    50   ~ 0
~A4
Text Label 4900 10350 0    50   ~ 0
~A5
Text Label 4900 10450 0    50   ~ 0
~A6
Text Label 4900 10550 0    50   ~ 0
~A7
Text Label 4900 10650 0    50   ~ 0
~A8
Text Label 4900 10750 0    50   ~ 0
~A9
Text Label 4900 8650 0    50   ~ 0
~A10
Text Label 4900 8750 0    50   ~ 0
~A11
Text Label 4900 8850 0    50   ~ 0
~A12
Wire Wire Line
	4900 10050 6550 10050
Wire Wire Line
	4900 10150 6550 10150
Wire Wire Line
	4900 10250 6550 10250
Wire Wire Line
	4900 10350 6550 10350
Wire Wire Line
	4900 10450 6550 10450
Wire Wire Line
	4900 10550 6550 10550
$Comp
L 74xx:74LS30 U7
U 1 1 699D595C
P 6850 10350
F 0 "U7" H 6850 10875 50  0000 C CNN
F 1 "74LS30" H 6850 10784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6850 10350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 6850 10350 50  0001 C CNN
	1    6850 10350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U5
U 1 1 69A8F352
P 7750 9050
F 0 "U5" H 7750 9375 50  0000 C CNN
F 1 "74LS02" H 7750 9284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7750 9050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 7750 9050 50  0001 C CNN
	1    7750 9050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U5
U 2 1 69A8F358
P 8350 9050
F 0 "U5" H 8350 9375 50  0000 C CNN
F 1 "74LS02" H 8350 9284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8350 9050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 8350 9050 50  0001 C CNN
	2    8350 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 8950 8050 9050
Connection ~ 8050 9050
Wire Wire Line
	8050 9050 8050 9150
Wire Wire Line
	7150 8950 7450 8950
Wire Wire Line
	7450 9150 7300 9150
Wire Wire Line
	7300 9150 7300 10350
Wire Wire Line
	7300 10350 7150 10350
$Comp
L 74xx:74LS02 U4
U 3 1 69C394F2
P 6100 5250
F 0 "U4" H 6100 5575 50  0000 C CNN
F 1 "74LS02" H 6100 5484 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6100 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 6100 5250 50  0001 C CNN
	3    6100 5250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U4
U 4 1 69C394F8
P 6100 5800
F 0 "U4" H 6100 6125 50  0000 C CNN
F 1 "74LS02" H 6100 6034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6100 5800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 6100 5800 50  0001 C CNN
	4    6100 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5150 5800 5250
Wire Wire Line
	5800 5700 5800 5800
Wire Wire Line
	5800 5250 4950 5250
Text Label 4950 5250 0    50   ~ 0
~PSL
Wire Wire Line
	7000 5800 6400 5800
Text Label 6800 5800 0    50   ~ 0
REQD
Connection ~ 5800 5250
Wire Wire Line
	5800 5250 5800 5350
Wire Wire Line
	5800 5800 4950 5800
Text Label 4950 5800 0    50   ~ 0
~REQD
Wire Wire Line
	7000 5250 6400 5250
Text Label 6800 5250 0    50   ~ 0
PSL
$Comp
L power:+5V #PWR03
U 1 1 6A0C8FD7
P 6400 2850
F 0 "#PWR03" H 6400 2700 50  0001 C CNN
F 1 "+5V" H 6415 3023 50  0000 C CNN
F 2 "" H 6400 2850 50  0001 C CNN
F 3 "" H 6400 2850 50  0001 C CNN
	1    6400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3900 6600 3900
Wire Wire Line
	6600 3800 6400 3800
Connection ~ 6400 3800
Wire Wire Line
	6400 3800 6400 3900
Wire Wire Line
	6600 3700 6400 3700
Connection ~ 6400 3700
Wire Wire Line
	6400 3700 6400 3800
$Comp
L 74xx:74LS30 U6
U 2 1 6A180218
P 7400 13400
F 0 "U6" H 7100 13800 50  0000 L CNN
F 1 "74LS30" H 7000 13050 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7400 13400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 7400 13400 50  0001 C CNN
	2    7400 13400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS30 U7
U 2 1 6A1832E5
P 8300 13400
F 0 "U7" H 8000 13800 50  0000 L CNN
F 1 "74LS30" H 7900 13050 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8300 13400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 8300 13400 50  0001 C CNN
	2    8300 13400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS30 U8
U 2 1 6A183E8E
P 9250 13400
F 0 "U8" H 8950 13800 50  0000 L CNN
F 1 "74LS30" H 8850 13050 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9250 13400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 9250 13400 50  0001 C CNN
	2    9250 13400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U5
U 5 1 6A2709B9
P 6500 13400
F 0 "U5" H 6200 13800 50  0000 L CNN
F 1 "74LS02" H 6100 13050 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6500 13400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 6500 13400 50  0001 C CNN
	5    6500 13400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6A5775E9
P 2850 13400
F 0 "C1" V 2700 13500 50  0000 C CNN
F 1 "0.1uF" V 2700 13250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 2888 13250 50  0001 C CNN
F 3 "~" H 2850 13400 50  0001 C CNN
	1    2850 13400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 13250 2850 12900
Wire Wire Line
	2850 12900 2500 12900
Wire Wire Line
	2850 13550 2850 13900
Wire Wire Line
	2850 13900 2500 13900
$Comp
L Device:C C2
U 1 1 6A65F81F
P 3900 13400
F 0 "C2" V 3750 13500 50  0000 C CNN
F 1 "0.1uF" V 3750 13250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 3938 13250 50  0001 C CNN
F 3 "~" H 3900 13400 50  0001 C CNN
	1    3900 13400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 13250 3900 12900
Wire Wire Line
	3900 12900 3550 12900
Wire Wire Line
	3900 13550 3900 13900
Wire Wire Line
	3900 13900 3550 13900
$Comp
L Device:C C3
U 1 1 6A68E480
P 4900 13400
F 0 "C3" V 4750 13500 50  0000 C CNN
F 1 "0.1uF" V 4750 13250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4938 13250 50  0001 C CNN
F 3 "~" H 4900 13400 50  0001 C CNN
	1    4900 13400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 13250 4900 12900
Wire Wire Line
	4900 12900 4550 12900
Wire Wire Line
	4900 13550 4900 13900
Wire Wire Line
	4900 13900 4550 13900
$Comp
L Device:C C4
U 1 1 6A6BDB11
P 5950 13400
F 0 "C4" V 5800 13500 50  0000 C CNN
F 1 "0.1uF" V 5800 13250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5988 13250 50  0001 C CNN
F 3 "~" H 5950 13400 50  0001 C CNN
	1    5950 13400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 13250 5950 12900
Wire Wire Line
	5950 13550 5950 13900
$Comp
L Device:C C5
U 1 1 6A6EDC65
P 6850 13400
F 0 "C5" V 6700 13500 50  0000 C CNN
F 1 "0.1uF" V 6700 13250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 6888 13250 50  0001 C CNN
F 3 "~" H 6850 13400 50  0001 C CNN
	1    6850 13400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 13250 6850 12900
Wire Wire Line
	6850 13550 6850 13900
Wire Wire Line
	6850 13900 6500 13900
$Comp
L Device:C C6
U 1 1 6A726717
P 7750 13400
F 0 "C6" V 7600 13500 50  0000 C CNN
F 1 "0.1uF" V 7600 13250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 7788 13250 50  0001 C CNN
F 3 "~" H 7750 13400 50  0001 C CNN
	1    7750 13400
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 13250 7750 12900
Wire Wire Line
	7750 13550 7750 13900
$Comp
L Device:C C7
U 1 1 6A757D2B
P 8650 13400
F 0 "C7" V 8500 13500 50  0000 C CNN
F 1 "0.1uF" V 8500 13250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 8688 13250 50  0001 C CNN
F 3 "~" H 8650 13400 50  0001 C CNN
	1    8650 13400
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 13250 8650 12900
Wire Wire Line
	8650 13550 8650 13900
$Comp
L Device:C C8
U 1 1 6A78A005
P 9600 13400
F 0 "C8" V 9450 13500 50  0000 C CNN
F 1 "0.1uF" V 9450 13250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 9638 13250 50  0001 C CNN
F 3 "~" H 9600 13400 50  0001 C CNN
	1    9600 13400
	-1   0    0    1   
$EndComp
Wire Wire Line
	9600 13250 9600 12900
Wire Wire Line
	9600 12900 9250 12900
Wire Wire Line
	9600 13550 9600 13900
Wire Wire Line
	9600 13900 9250 13900
Wire Wire Line
	2850 12900 3550 12900
Connection ~ 2850 12900
Connection ~ 3550 12900
Wire Wire Line
	3550 13900 2850 13900
Connection ~ 3550 13900
Connection ~ 2850 13900
Wire Wire Line
	3900 12900 4550 12900
Connection ~ 3900 12900
Connection ~ 4550 12900
Wire Wire Line
	4550 13900 3900 13900
Connection ~ 4550 13900
Connection ~ 3900 13900
Wire Wire Line
	4900 13900 5600 13900
Connection ~ 4900 13900
Connection ~ 6500 13900
Connection ~ 5600 13900
Wire Wire Line
	5600 13900 5950 13900
Connection ~ 5950 13900
Wire Wire Line
	5950 13900 6500 13900
Wire Wire Line
	4900 12900 5600 12900
Connection ~ 4900 12900
Connection ~ 9250 12900
Connection ~ 5600 12900
Wire Wire Line
	5600 12900 5950 12900
Connection ~ 5950 12900
Wire Wire Line
	5950 12900 6500 12900
Connection ~ 6500 12900
Wire Wire Line
	6500 12900 6850 12900
Connection ~ 6850 12900
Wire Wire Line
	6850 12900 7400 12900
Connection ~ 7400 12900
Wire Wire Line
	7400 12900 7750 12900
Connection ~ 7750 12900
Wire Wire Line
	7750 12900 8300 12900
Connection ~ 8300 12900
Wire Wire Line
	8300 12900 8650 12900
Connection ~ 8650 12900
Wire Wire Line
	8650 12900 9250 12900
Wire Wire Line
	6850 13900 7400 13900
Connection ~ 9250 13900
Connection ~ 6850 13900
Connection ~ 7400 13900
Wire Wire Line
	7400 13900 7750 13900
Connection ~ 7750 13900
Wire Wire Line
	7750 13900 8300 13900
Connection ~ 8300 13900
Wire Wire Line
	8300 13900 8650 13900
Connection ~ 8650 13900
Wire Wire Line
	8650 13900 9250 13900
$Comp
L power:GND #PWR013
U 1 1 6A97D94B
P 2500 13900
F 0 "#PWR013" H 2500 13650 50  0001 C CNN
F 1 "GND" H 2505 13727 50  0000 C CNN
F 2 "" H 2500 13900 50  0001 C CNN
F 3 "" H 2500 13900 50  0001 C CNN
	1    2500 13900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 6A9CDB4C
P 2500 12900
F 0 "#PWR012" H 2500 12750 50  0001 C CNN
F 1 "+5V" H 2515 13073 50  0000 C CNN
F 2 "" H 2500 12900 50  0001 C CNN
F 3 "" H 2500 12900 50  0001 C CNN
	1    2500 12900
	1    0    0    -1  
$EndComp
Connection ~ 2500 12900
Connection ~ 5800 5800
Wire Wire Line
	5800 5800 5800 5900
$Comp
L 74xx:74LS244 U13
U 1 1 6841AFD5
P 13200 9800
F 0 "U13" H 12950 10500 50  0000 C CNN
F 1 "74LS244" H 13450 10500 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 13200 9800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls244.pdf" H 13200 9800 50  0001 C CNN
	1    13200 9800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U12
U 1 1 6841F84B
P 12150 10800
F 0 "U12" H 12150 11125 50  0000 C CNN
F 1 "74LS32" H 12150 11034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 12150 10800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 12150 10800 50  0001 C CNN
	1    12150 10800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U12
U 2 1 684208BD
P 11100 10550
F 0 "U12" H 11100 10875 50  0000 C CNN
F 1 "74LS32" H 11100 10784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 11100 10550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 11100 10550 50  0001 C CNN
	2    11100 10550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U12
U 3 1 68420DD2
P 11100 11300
F 0 "U12" H 11100 11625 50  0000 C CNN
F 1 "74LS32" H 11100 11534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 11100 11300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 11100 11300 50  0001 C CNN
	3    11100 11300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U12
U 4 1 68421B8C
P 5950 11850
F 0 "U12" H 5950 12175 50  0000 C CNN
F 1 "74LS32" H 5950 12084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5950 11850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5950 11850 50  0001 C CNN
	4    5950 11850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U12
U 5 1 68422C59
P 10200 13400
F 0 "U12" H 9900 13800 50  0000 L CNN
F 1 "74LS32" H 9800 13050 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 10200 13400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 10200 13400 50  0001 C CNN
	5    10200 13400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 10450 10400 10450
Wire Wire Line
	10800 10650 10400 10650
Wire Wire Line
	11400 10550 11650 10550
Wire Wire Line
	11650 10550 11650 10700
Wire Wire Line
	11650 10700 11850 10700
Wire Wire Line
	10800 11200 10400 11200
Wire Wire Line
	10800 11400 10400 11400
Wire Wire Line
	11400 11300 11650 11300
Wire Wire Line
	11650 11300 11650 10900
Wire Wire Line
	11650 10900 11850 10900
Wire Wire Line
	12450 10800 12600 10800
Wire Wire Line
	12600 10800 12600 10300
Wire Wire Line
	12600 10200 12700 10200
Wire Wire Line
	12700 10300 12600 10300
Connection ~ 12600 10300
Wire Wire Line
	12600 10300 12600 10200
Wire Wire Line
	12350 10000 12700 10000
Wire Wire Line
	12700 9900 12350 9900
Connection ~ 12350 9900
Wire Wire Line
	12350 9900 12350 10000
Wire Wire Line
	12700 9800 12350 9800
Connection ~ 12350 9800
Wire Wire Line
	12350 9800 12350 9900
Wire Wire Line
	12700 9700 12350 9700
Connection ~ 12350 9700
Wire Wire Line
	12350 9700 12350 9800
Wire Wire Line
	12700 9600 12350 9600
Connection ~ 12350 9600
Wire Wire Line
	12350 9600 12350 9700
Wire Wire Line
	12700 9500 12350 9500
Connection ~ 12350 9500
Wire Wire Line
	12350 9500 12350 9600
Wire Wire Line
	12700 9400 12350 9400
Wire Wire Line
	12350 9400 12350 9500
Text Label 10400 10450 0    50   ~ 0
~CS
Text Label 10400 10650 0    50   ~ 0
~RD
Text Label 10400 11200 0    50   ~ 0
~REQD
Text Label 10400 11400 0    50   ~ 0
~PSL
$Comp
L power:GND #PWR014
U 1 1 68991E09
P 12350 10000
F 0 "#PWR014" H 12350 9750 50  0001 C CNN
F 1 "GND" H 12355 9827 50  0000 C CNN
F 2 "" H 12350 10000 50  0001 C CNN
F 3 "" H 12350 10000 50  0001 C CNN
	1    12350 10000
	1    0    0    -1  
$EndComp
Connection ~ 12350 10000
$Comp
L power:GND #PWR016
U 1 1 68A5785A
P 13200 10600
F 0 "#PWR016" H 13200 10350 50  0001 C CNN
F 1 "GND" H 13205 10427 50  0000 C CNN
F 2 "" H 13200 10600 50  0001 C CNN
F 3 "" H 13200 10600 50  0001 C CNN
	1    13200 10600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 68AFB451
P 13200 9000
F 0 "#PWR015" H 13200 8850 50  0001 C CNN
F 1 "+5V" H 13215 9173 50  0000 C CNN
F 2 "" H 13200 9000 50  0001 C CNN
F 3 "" H 13200 9000 50  0001 C CNN
	1    13200 9000
	1    0    0    -1  
$EndComp
Text Label 14100 9300 0    50   ~ 0
D0
Text Label 14100 9400 0    50   ~ 0
D1
Text Label 14100 9500 0    50   ~ 0
D2
Text Label 14100 9600 0    50   ~ 0
D3
Text Label 14100 9700 0    50   ~ 0
D4
Text Label 14100 9800 0    50   ~ 0
D5
Text Label 14100 9900 0    50   ~ 0
D6
Text Label 14100 10000 0    50   ~ 0
D7
$Comp
L Device:C C13
U 1 1 68B91F36
P 13700 10600
F 0 "C13" V 13550 10700 50  0000 C CNN
F 1 "0.1uF" V 13550 10450 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 13738 10450 50  0001 C CNN
F 3 "~" H 13700 10600 50  0001 C CNN
	1    13700 10600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13550 10600 13200 10600
Connection ~ 13200 10600
Wire Wire Line
	13850 10600 13850 9000
Wire Wire Line
	13850 9000 13200 9000
Connection ~ 13200 9000
Wire Wire Line
	13700 9300 14250 9300
Wire Wire Line
	13700 9400 14250 9400
Wire Wire Line
	13700 9500 14250 9500
Wire Wire Line
	13700 9600 14250 9600
Wire Wire Line
	13700 9700 14250 9700
Wire Wire Line
	13700 9800 14250 9800
Wire Wire Line
	13700 9900 14250 9900
Wire Wire Line
	13700 10000 14250 10000
$Comp
L Device:C C12
U 1 1 68FED8D5
P 10550 13400
F 0 "C12" V 10400 13500 50  0000 C CNN
F 1 "0.1uF" V 10400 13250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 10588 13250 50  0001 C CNN
F 3 "~" H 10550 13400 50  0001 C CNN
	1    10550 13400
	-1   0    0    1   
$EndComp
Wire Wire Line
	9600 12900 10200 12900
Wire Wire Line
	10550 12900 10550 13250
Connection ~ 9600 12900
Connection ~ 10200 12900
Wire Wire Line
	10200 12900 10550 12900
Wire Wire Line
	10550 13900 10200 13900
Connection ~ 9600 13900
Connection ~ 10200 13900
Wire Wire Line
	10200 13900 9600 13900
NoConn ~ 6250 11850
Wire Wire Line
	5650 11750 5500 11750
Wire Wire Line
	5500 11750 5500 11950
Wire Wire Line
	5650 11950 5500 11950
Connection ~ 5500 11950
Wire Wire Line
	5500 11950 5500 12100
$Comp
L power:GND #PWR017
U 1 1 69237EE9
P 5500 12100
F 0 "#PWR017" H 5500 11850 50  0001 C CNN
F 1 "GND" H 5505 11927 50  0000 C CNN
F 2 "" H 5500 12100 50  0001 C CNN
F 3 "" H 5500 12100 50  0001 C CNN
	1    5500 12100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 13550 10550 13900
Wire Wire Line
	12700 9300 12600 9300
Wire Wire Line
	12600 9300 12600 9000
Wire Wire Line
	12600 9000 13200 9000
$Comp
L Memory_EPROM:27512 U14
U 1 1 68486797
P 8650 2400
F 0 "U14" H 8400 3450 50  0000 C CNN
F 1 "27512" H 8850 3500 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 8650 2400 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheets/120/227190_DS.pdf" H 8650 2400 50  0001 C CNN
	1    8650 2400
	1    0    0    -1  
$EndComp
Connection ~ 8650 1300
Wire Wire Line
	8050 3500 8150 3500
Wire Wire Line
	8250 2800 7400 2800
Text Label 7400 2800 0    50   ~ 0
A13
$Comp
L Memory_RAM2:SLIDE_SWITCH_3P S1
U 1 1 6883BDB2
P 7150 700
F 0 "S1" H 7150 765 50  0000 C CNN
F 1 "27512/27256" H 7150 674 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7150 725 50  0001 C CNN
F 3 "" H 7150 725 50  0001 C CNN
	1    7150 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3000 7150 3000
Wire Wire Line
	7150 3000 7150 1050
Wire Wire Line
	7350 900  8050 900 
Wire Wire Line
	8050 900  8050 1300
Wire Wire Line
	6950 900  6700 900 
Wire Wire Line
	6700 900  6700 1100
$Comp
L power:GND #PWR018
U 1 1 689560F4
P 6700 1100
F 0 "#PWR018" H 6700 850 50  0001 C CNN
F 1 "GND" H 6705 927 50  0000 C CNN
F 2 "" H 6700 1100 50  0001 C CNN
F 3 "" H 6700 1100 50  0001 C CNN
	1    6700 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1300 8050 3500
Connection ~ 8050 1300
Wire Wire Line
	8050 1300 8650 1300
Wire Wire Line
	8250 2900 7950 2900
Wire Wire Line
	7950 2900 7950 3750
$Comp
L power:GND #PWR019
U 1 1 68AC0EE8
P 7950 3750
F 0 "#PWR019" H 7950 3500 50  0001 C CNN
F 1 "GND" H 7955 3577 50  0000 C CNN
F 2 "" H 7950 3750 50  0001 C CNN
F 3 "" H 7950 3750 50  0001 C CNN
	1    7950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2850 6400 3600
Wire Wire Line
	6600 3600 6400 3600
Connection ~ 6400 3600
Wire Wire Line
	6400 3600 6400 3700
Text Label 1300 5200 0    50   ~ 0
+5V
Wire Wire Line
	1300 5200 1500 5200
Text Label 1300 5300 0    50   ~ 0
+5V
Wire Wire Line
	1300 5300 1500 5300
Text Label 1300 5400 0    50   ~ 0
+12V
Wire Wire Line
	1300 5400 1500 5400
Text Label 1300 5500 0    50   ~ 0
~PSL
Wire Wire Line
	1300 5500 1500 5500
Text Label 1300 5600 0    50   ~ 0
~BSL
Wire Wire Line
	1300 5600 1500 5600
Text Label 1300 5700 0    50   ~ 0
~REQ
Wire Wire Line
	1300 5700 1500 5700
Text Label 1300 5800 0    50   ~ 0
~RD
Wire Wire Line
	1300 5800 1500 5800
Text Label 1300 5900 0    50   ~ 0
~CS
Wire Wire Line
	1300 5900 1500 5900
Text Label 1300 6100 0    50   ~ 0
~NMI
Wire Wire Line
	1300 6100 1500 6100
Text Label 1300 6200 0    50   ~ 0
~INTA
Wire Wire Line
	1300 6200 1500 6200
Text Label 1300 6300 0    50   ~ 0
~INTC
Wire Wire Line
	1300 6300 1500 6300
Text Label 1300 6400 0    50   ~ 0
D0
Wire Wire Line
	1300 6400 1500 6400
Text Label 1300 6500 0    50   ~ 0
D2
Wire Wire Line
	1300 6500 1500 6500
Text Label 1300 6600 0    50   ~ 0
D4
Wire Wire Line
	1300 6600 1500 6600
Text Label 1300 6700 0    50   ~ 0
D6
Wire Wire Line
	1300 6700 1500 6700
Text Label 1300 6800 0    50   ~ 0
~A0
Wire Wire Line
	1300 6800 1500 6800
Text Label 1300 6900 0    50   ~ 0
~A2
Wire Wire Line
	1300 6900 1500 6900
Text Label 1300 7000 0    50   ~ 0
~A4
Wire Wire Line
	1300 7000 1500 7000
Text Label 1300 7100 0    50   ~ 0
~A6
Wire Wire Line
	1300 7100 1500 7100
Text Label 1300 7200 0    50   ~ 0
~A8
Wire Wire Line
	1300 7200 1500 7200
Text Label 1300 7300 0    50   ~ 0
~A10
Wire Wire Line
	1300 7300 1500 7300
Text Label 1300 7400 0    50   ~ 0
~A12
Wire Wire Line
	1300 7400 1500 7400
Text Label 1300 7500 0    50   ~ 0
~A14
Wire Wire Line
	1300 7500 1500 7500
Text Label 1300 7600 0    50   ~ 0
-12V
Wire Wire Line
	1300 7600 1500 7600
Text Label 2000 5200 0    50   ~ 0
GND
Wire Wire Line
	2000 5200 2150 5200
Text Label 2000 5300 0    50   ~ 0
GND
Wire Wire Line
	2000 5300 2150 5300
Text Label 2000 5400 0    50   ~ 0
+12V
Wire Wire Line
	2000 5400 2150 5400
Text Label 2000 5500 0    50   ~ 0
CLOCK
Wire Wire Line
	2000 5500 2150 5500
Text Label 2000 5600 0    50   ~ 0
~RESET
Wire Wire Line
	2000 5600 2150 5600
Text Label 2000 5700 0    50   ~ 0
~REQD
Wire Wire Line
	2000 5700 2150 5700
Text Label 2000 5800 0    50   ~ 0
~WR
Wire Wire Line
	2000 5800 2150 5800
Text Label 2000 6100 0    50   ~ 0
~LPS
Wire Wire Line
	2000 6100 2150 6100
Text Label 2000 6200 0    50   ~ 0
~INTB
Wire Wire Line
	2000 6200 2150 6200
Text Label 2000 6300 0    50   ~ 0
~INTD
Wire Wire Line
	2000 6300 2150 6300
Text Label 2000 6400 0    50   ~ 0
D1
Wire Wire Line
	2000 6400 2150 6400
Text Label 2000 6500 0    50   ~ 0
D3
Wire Wire Line
	2000 6500 2150 6500
Text Label 2000 6600 0    50   ~ 0
D5
Wire Wire Line
	2000 6600 2150 6600
Text Label 2000 6700 0    50   ~ 0
D7
Wire Wire Line
	2000 6700 2150 6700
Text Label 2000 6800 0    50   ~ 0
~A1
Wire Wire Line
	2000 6800 2150 6800
Text Label 2000 6900 0    50   ~ 0
~A3
Wire Wire Line
	2000 6900 2150 6900
Text Label 2000 7000 0    50   ~ 0
~A5
Wire Wire Line
	2000 7000 2150 7000
Text Label 2000 7100 0    50   ~ 0
~A7
Wire Wire Line
	2000 7100 2150 7100
Text Label 2000 7200 0    50   ~ 0
~A9
Wire Wire Line
	2000 7200 2150 7200
Text Label 2000 7300 0    50   ~ 0
~A11
Wire Wire Line
	2000 7300 2150 7300
Text Label 2000 7400 0    50   ~ 0
~A13
Wire Wire Line
	2000 7400 2150 7400
Text Label 2000 7500 0    50   ~ 0
~A15
Wire Wire Line
	2000 7500 2150 7500
Text Label 2000 7600 0    50   ~ 0
-5V
Wire Wire Line
	2000 7600 2150 7600
$Comp
L Connector_Generic:Conn_02x25_Row_Letter_First J2
U 1 1 68585442
P 1700 6400
F 0 "J2" H 1750 7817 50  0000 C CNN
F 1 "FP-1100_BUS" H 1700 5050 50  0000 C CNN
F 2 "FP-1100:PinSocket_2x25_P2.54mm_Vertical" H 1700 6400 50  0001 C CNN
F 3 "~" H 1700 6400 50  0001 C CNN
	1    1700 6400
	1    0    0    -1  
$EndComp
NoConn ~ 2000 5900
NoConn ~ 2000 6000
NoConn ~ 1500 6000
$EndSCHEMATC
