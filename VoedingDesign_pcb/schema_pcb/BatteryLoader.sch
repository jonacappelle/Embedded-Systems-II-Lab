EESchema Schematic File Version 4
LIBS:schema_pcb-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L BQ25505RGRR:BQ25505RGRR U?
U 1 1 5E7E1716
P 2850 2525
F 0 "U?" H 4450 2912 60  0000 C CNN
F 1 "BQ25505RGRR" H 4450 2806 60  0000 C CNN
F 2 "RGR20_2P05X2P05" H 4450 2765 60  0001 C CNN
F 3 "" H 2850 2525 60  0000 C CNN
	1    2850 2525
	1    0    0    -1  
$EndComp
Text HLabel 1325 2625 0    50   Input ~ 0
input
$Comp
L Device:C CIN1
U 1 1 5E833BB2
P 6750 2775
F 0 "CIN1" H 6865 2821 50  0000 L CNN
F 1 "4.7 uF" H 6865 2730 50  0000 L CNN
F 2 "" H 6788 2625 50  0001 C CNN
F 3 "~" H 6750 2775 50  0001 C CNN
	1    6750 2775
	1    0    0    -1  
$EndComp
$Comp
L Device:C CREF2
U 1 1 5E833BEC
P 1975 3050
F 0 "CREF2" H 1575 3100 50  0000 L CNN
F 1 "100 nF" H 1575 3000 50  0000 L CNN
F 2 "" H 2013 2900 50  0001 C CNN
F 3 "~" H 1975 3050 50  0001 C CNN
	1    1975 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 5E833D1E
P 6400 2625
F 0 "L?" V 6590 2625 50  0000 C CNN
F 1 "22 uH" V 6499 2625 50  0000 C CNN
F 2 "" H 6400 2625 50  0001 C CNN
F 3 "~" H 6400 2625 50  0001 C CNN
	1    6400 2625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 2625 6250 2625
Wire Wire Line
	6550 2625 6750 2625
Text HLabel 6850 2625 2    50   Input ~ 0
input
Connection ~ 6750 2625
Wire Wire Line
	6750 2625 6850 2625
$Comp
L power:GND #PWR?
U 1 1 5E834080
P 6750 3050
F 0 "#PWR?" H 6750 2800 50  0001 C CNN
F 1 "GND" H 6755 2877 50  0000 C CNN
F 2 "" H 6750 3050 50  0001 C CNN
F 3 "" H 6750 3050 50  0001 C CNN
	1    6750 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1325 2625 2850 2625
Wire Wire Line
	2850 2825 1975 2825
Wire Wire Line
	1975 2825 1975 2900
Wire Wire Line
	1975 3200 1975 3250
$Comp
L power:GND #PWR?
U 1 1 5E8341C0
P 1975 3300
F 0 "#PWR?" H 1975 3050 50  0001 C CNN
F 1 "GND" H 1980 3127 50  0000 C CNN
F 2 "" H 1975 3300 50  0001 C CNN
F 3 "" H 1975 3300 50  0001 C CNN
	1    1975 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2925 2775 2925
Wire Wire Line
	2125 3250 1975 3250
Connection ~ 1975 3250
Wire Wire Line
	1975 3250 1975 3300
NoConn ~ 6050 3325
Wire Wire Line
	6050 2925 6125 2925
Wire Wire Line
	6050 3025 6125 3025
Wire Wire Line
	6125 3025 6125 2925
Wire Wire Line
	6050 3125 6125 3125
Wire Wire Line
	6125 3125 6125 3025
Connection ~ 6125 3025
Wire Wire Line
	6750 2925 6750 3025
Wire Wire Line
	6125 3025 6750 3025
Connection ~ 6750 3025
Wire Wire Line
	6750 3025 6750 3050
Wire Wire Line
	2850 3025 2775 3025
Wire Wire Line
	2125 3025 2125 3250
Wire Wire Line
	2775 2925 2775 3025
Connection ~ 2775 3025
Wire Wire Line
	2775 3025 2125 3025
Wire Wire Line
	2850 2525 2775 2525
Wire Wire Line
	2775 2525 2775 2925
Connection ~ 2775 2925
Wire Wire Line
	2850 2725 2600 2725
Wire Wire Line
	2600 2725 2600 1100
Wire Wire Line
	2600 1100 4050 1100
Wire Wire Line
	6175 1100 6175 2725
Wire Wire Line
	6175 2725 6050 2725
$Comp
L Device:C CBYP1
U 1 1 5E8358D4
P 4050 1375
F 0 "CBYP1" H 3675 1450 50  0000 L CNN
F 1 "0.1 uF" H 3675 1350 50  0000 L CNN
F 2 "" H 4088 1225 50  0001 C CNN
F 3 "~" H 4050 1375 50  0001 C CNN
	1    4050 1375
	1    0    0    -1  
$EndComp
$Comp
L Device:C CSTOR2
U 1 1 5E835934
P 4475 1375
F 0 "CSTOR2" H 4590 1421 50  0000 L CNN
F 1 "4.7 uF" H 4590 1330 50  0000 L CNN
F 2 "" H 4513 1225 50  0001 C CNN
F 3 "~" H 4475 1375 50  0001 C CNN
	1    4475 1375
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E83598E
P 4275 1650
F 0 "#PWR?" H 4275 1400 50  0001 C CNN
F 1 "GND" H 4280 1477 50  0000 C CNN
F 2 "" H 4275 1650 50  0001 C CNN
F 3 "" H 4275 1650 50  0001 C CNN
	1    4275 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1225 4050 1100
Connection ~ 4050 1100
Wire Wire Line
	4050 1100 4475 1100
Wire Wire Line
	4475 1225 4475 1100
Connection ~ 4475 1100
Wire Wire Line
	4475 1100 6175 1100
Wire Wire Line
	4050 1525 4050 1600
Wire Wire Line
	4050 1600 4275 1600
Wire Wire Line
	4275 1600 4275 1650
Wire Wire Line
	4275 1600 4475 1600
Wire Wire Line
	4475 1600 4475 1525
Connection ~ 4275 1600
$Comp
L Device:R ROV4
U 1 1 5E836E18
P 3975 4300
F 0 "ROV4" H 4045 4346 50  0000 L CNN
F 1 "R" H 4045 4255 50  0000 L CNN
F 2 "" V 3905 4300 50  0001 C CNN
F 3 "~" H 3975 4300 50  0001 C CNN
	1    3975 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R ROV3
U 1 1 5E836ECF
P 3975 4825
F 0 "ROV3" H 4045 4871 50  0000 L CNN
F 1 "R" H 4045 4780 50  0000 L CNN
F 2 "" V 3905 4825 50  0001 C CNN
F 3 "~" H 3975 4825 50  0001 C CNN
	1    3975 4825
	1    0    0    -1  
$EndComp
$Comp
L Device:R ROK6
U 1 1 5E836F59
P 4650 4275
F 0 "ROK6" H 4720 4321 50  0000 L CNN
F 1 "R" H 4720 4230 50  0000 L CNN
F 2 "" V 4580 4275 50  0001 C CNN
F 3 "~" H 4650 4275 50  0001 C CNN
	1    4650 4275
	1    0    0    -1  
$EndComp
$Comp
L Device:R ROK5
U 1 1 5E83700D
P 4650 4700
F 0 "ROK5" H 4720 4746 50  0000 L CNN
F 1 "R" H 4720 4655 50  0000 L CNN
F 2 "" V 4580 4700 50  0001 C CNN
F 3 "~" H 4650 4700 50  0001 C CNN
	1    4650 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R ROK4
U 1 1 5E8370A5
P 4650 5125
F 0 "ROK4" H 4720 5171 50  0000 L CNN
F 1 "R" H 4720 5080 50  0000 L CNN
F 2 "" V 4580 5125 50  0001 C CNN
F 3 "~" H 4650 5125 50  0001 C CNN
	1    4650 5125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E837170
P 4300 5550
F 0 "#PWR?" H 4300 5300 50  0001 C CNN
F 1 "GND" H 4305 5377 50  0000 C CNN
F 2 "" H 4300 5550 50  0001 C CNN
F 3 "" H 4300 5550 50  0001 C CNN
	1    4300 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 4450 3975 4575
Wire Wire Line
	3975 4975 3975 5425
Wire Wire Line
	3975 5425 4300 5425
Wire Wire Line
	4300 5425 4300 5550
Wire Wire Line
	4300 5425 4650 5425
Wire Wire Line
	4650 5425 4650 5275
Connection ~ 4300 5425
Wire Wire Line
	4650 4975 4650 4925
Wire Wire Line
	4650 4550 4650 4500
Wire Wire Line
	3975 4150 3975 4050
Wire Wire Line
	4650 4050 4650 4125
Wire Wire Line
	2850 3225 2575 3225
Wire Wire Line
	3975 4575 2400 4575
Wire Wire Line
	2400 4575 2400 3125
Wire Wire Line
	2400 3125 2850 3125
Connection ~ 3975 4575
Wire Wire Line
	3975 4575 3975 4675
Wire Wire Line
	4650 4925 6775 4925
Wire Wire Line
	6775 4925 6775 3425
Wire Wire Line
	6775 3425 6050 3425
Connection ~ 4650 4925
Wire Wire Line
	4650 4925 4650 4850
Wire Wire Line
	6550 4500 6550 3525
Connection ~ 4650 4500
Wire Wire Line
	4650 4500 4650 4425
Wire Wire Line
	6050 3525 6550 3525
Wire Wire Line
	4650 4500 6550 4500
NoConn ~ 2850 3425
Text HLabel 6150 2825 2    50   Input ~ 0
VBAT_SEC
Wire Wire Line
	6050 2825 6150 2825
Text HLabel 8200 3625 0    50   Input ~ 0
VBAT_SEC
$Comp
L Device:Battery_Cell BT?
U 1 1 5E8453D4
P 8500 3925
F 0 "BT?" H 8618 4021 50  0000 L CNN
F 1 "Battery_Cell" H 8618 3930 50  0000 L CNN
F 2 "" V 8500 3985 50  0001 C CNN
F 3 "~" V 8500 3985 50  0001 C CNN
	1    8500 3925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8454B4
P 8500 4175
F 0 "#PWR?" H 8500 3925 50  0001 C CNN
F 1 "GND" H 8505 4002 50  0000 C CNN
F 2 "" H 8500 4175 50  0001 C CNN
F 3 "" H 8500 4175 50  0001 C CNN
	1    8500 4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3625 8500 3625
Wire Wire Line
	8500 3625 8500 3725
Wire Wire Line
	8500 4025 8500 4100
NoConn ~ 6050 2525
$Comp
L Regulator_Linear:NCP1117-3.3_SOT223 U?
U 1 1 5E849BD1
P 7350 1100
F 0 "U?" H 7350 1342 50  0000 C CNN
F 1 "NCP1117-3.3_SOT223" H 7350 1251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 7350 1300 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NCP1117-D.PDF" H 7450 850 50  0001 C CNN
	1    7350 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5E84B4F5
P 6850 1400
F 0 "C?" H 6968 1446 50  0000 L CNN
F 1 "10u" H 6968 1355 50  0000 L CNN
F 2 "" H 6888 1250 50  0001 C CNN
F 3 "~" H 6850 1400 50  0001 C CNN
	1    6850 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5E84B56D
P 7875 1375
F 0 "C?" H 7993 1421 50  0000 L CNN
F 1 "10u" H 7993 1330 50  0000 L CNN
F 2 "" H 7913 1225 50  0001 C CNN
F 3 "~" H 7875 1375 50  0001 C CNN
	1    7875 1375
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E84B5C8
P 8325 1375
F 0 "C?" H 8440 1421 50  0000 L CNN
F 1 "0.1u" H 8440 1330 50  0000 L CNN
F 2 "" H 8363 1225 50  0001 C CNN
F 3 "~" H 8325 1375 50  0001 C CNN
	1    8325 1375
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E84B64A
P 7350 1700
F 0 "#PWR?" H 7350 1450 50  0001 C CNN
F 1 "GND" H 7355 1527 50  0000 C CNN
F 2 "" H 7350 1700 50  0001 C CNN
F 3 "" H 7350 1700 50  0001 C CNN
	1    7350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1250 6850 1100
Wire Wire Line
	6850 1100 7050 1100
Wire Wire Line
	7650 1100 7875 1100
Wire Wire Line
	7875 1100 7875 1225
Wire Wire Line
	7875 1100 8325 1100
Wire Wire Line
	8325 1100 8325 1225
Connection ~ 7875 1100
Wire Wire Line
	7350 1400 7350 1625
Wire Wire Line
	6850 1550 6850 1625
Wire Wire Line
	6850 1625 7350 1625
Connection ~ 7350 1625
Wire Wire Line
	7350 1625 7350 1700
Wire Wire Line
	7350 1625 7875 1625
Wire Wire Line
	7875 1625 7875 1525
Wire Wire Line
	7875 1625 8325 1625
Wire Wire Line
	8325 1625 8325 1525
Connection ~ 7875 1625
Connection ~ 6850 1100
Wire Wire Line
	6175 1100 6850 1100
Connection ~ 6175 1100
Wire Wire Line
	6050 3225 6125 3225
Wire Wire Line
	6125 3225 6125 3125
Connection ~ 6125 3125
NoConn ~ 2850 3325
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 5E867A15
P 9575 3625
F 0 "J?" H 9602 3601 50  0000 L CNN
F 1 "conn_meas_battery" H 9602 3510 50  0000 L CNN
F 2 "" H 9575 3625 50  0001 C CNN
F 3 "~" H 9575 3625 50  0001 C CNN
	1    9575 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	9375 3625 8500 3625
Connection ~ 8500 3625
Wire Wire Line
	8500 4100 9375 4100
Wire Wire Line
	9375 4100 9375 3725
Connection ~ 8500 4100
Wire Wire Line
	8500 4100 8500 4175
$Comp
L Connector:Conn_01x20_Female J?
U 1 1 5E86BAB7
P 9325 1700
F 0 "J?" H 9352 1676 50  0000 L CNN
F 1 "Conn_3V3" H 9352 1585 50  0000 L CNN
F 2 "" H 9325 1700 50  0001 C CNN
F 3 "~" H 9325 1700 50  0001 C CNN
	1    9325 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8325 1100 9050 1100
Wire Wire Line
	9125 800  9050 800 
Wire Wire Line
	9050 800  9050 900 
Wire Wire Line
	9050 900  9125 900 
Wire Wire Line
	9050 900  9050 1000
Wire Wire Line
	9050 1000 9125 1000
Connection ~ 9050 900 
Wire Wire Line
	9050 1000 9050 1100
Connection ~ 9050 1000
Connection ~ 9050 1100
Wire Wire Line
	9050 1100 9125 1100
Wire Wire Line
	9050 1100 9050 1200
Wire Wire Line
	9050 1200 9125 1200
Wire Wire Line
	9050 1300 9125 1300
Wire Wire Line
	9050 1200 9050 1300
Connection ~ 9050 1200
Wire Wire Line
	9050 1300 9050 1400
Wire Wire Line
	9050 1400 9125 1400
Connection ~ 9050 1300
Wire Wire Line
	9125 1500 9050 1500
Wire Wire Line
	9050 1500 9050 1400
Connection ~ 9050 1400
Wire Wire Line
	9125 1600 9050 1600
Wire Wire Line
	9050 1600 9050 1500
Connection ~ 9050 1500
Wire Wire Line
	9125 1700 9050 1700
Wire Wire Line
	9050 1700 9050 1600
Connection ~ 9050 1600
Wire Wire Line
	9125 1800 9050 1800
Wire Wire Line
	9050 1800 9050 1700
Connection ~ 9050 1700
Wire Wire Line
	9125 1900 9050 1900
Wire Wire Line
	9050 1900 9050 1800
Connection ~ 9050 1800
Wire Wire Line
	9125 2000 9050 2000
Wire Wire Line
	9050 2000 9050 1900
Connection ~ 9050 1900
Wire Wire Line
	9125 2100 9050 2100
Wire Wire Line
	9050 2100 9050 2000
Connection ~ 9050 2000
Wire Wire Line
	9125 2200 9050 2200
Wire Wire Line
	9050 2200 9050 2100
Connection ~ 9050 2100
Wire Wire Line
	9125 2300 9050 2300
Wire Wire Line
	9050 2300 9050 2200
Connection ~ 9050 2200
Wire Wire Line
	9125 2400 9050 2400
Wire Wire Line
	9050 2400 9050 2300
Connection ~ 9050 2300
Wire Wire Line
	9125 2500 9050 2500
Wire Wire Line
	9050 2500 9050 2400
Connection ~ 9050 2400
Wire Wire Line
	9125 2600 9050 2600
Wire Wire Line
	9050 2600 9050 2500
Connection ~ 9050 2500
Wire Wire Line
	9125 2700 9050 2700
Wire Wire Line
	9050 2700 9050 2600
Connection ~ 9050 2600
Connection ~ 8325 1100
$Comp
L Connector:Conn_01x20_Female J?
U 1 1 5E8AF23F
P 10375 1700
F 0 "J?" H 10402 1676 50  0000 L CNN
F 1 "Conn_GND" H 10402 1585 50  0000 L CNN
F 2 "" H 10375 1700 50  0001 C CNN
F 3 "~" H 10375 1700 50  0001 C CNN
	1    10375 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10175 800  10100 800 
Wire Wire Line
	10100 800  10100 900 
Wire Wire Line
	10100 900  10175 900 
Wire Wire Line
	10100 900  10100 1000
Wire Wire Line
	10100 1000 10175 1000
Connection ~ 10100 900 
Wire Wire Line
	10100 1000 10100 1100
Connection ~ 10100 1000
Connection ~ 10100 1100
Wire Wire Line
	10100 1100 10175 1100
Wire Wire Line
	10100 1100 10100 1200
Wire Wire Line
	10100 1200 10175 1200
Wire Wire Line
	10100 1300 10175 1300
Wire Wire Line
	10100 1200 10100 1300
Connection ~ 10100 1200
Wire Wire Line
	10100 1300 10100 1400
Wire Wire Line
	10100 1400 10175 1400
Connection ~ 10100 1300
Wire Wire Line
	10175 1500 10100 1500
Wire Wire Line
	10100 1500 10100 1400
Connection ~ 10100 1400
Wire Wire Line
	10175 1600 10100 1600
Wire Wire Line
	10100 1600 10100 1500
Connection ~ 10100 1500
Wire Wire Line
	10175 1700 10100 1700
Wire Wire Line
	10100 1700 10100 1600
Connection ~ 10100 1600
Wire Wire Line
	10175 1800 10100 1800
Wire Wire Line
	10100 1800 10100 1700
Connection ~ 10100 1700
Wire Wire Line
	10175 1900 10100 1900
Wire Wire Line
	10100 1900 10100 1800
Connection ~ 10100 1800
Wire Wire Line
	10175 2000 10100 2000
Wire Wire Line
	10100 2000 10100 1900
Connection ~ 10100 1900
Wire Wire Line
	10175 2100 10100 2100
Wire Wire Line
	10100 2100 10100 2000
Connection ~ 10100 2000
Wire Wire Line
	10175 2200 10100 2200
Wire Wire Line
	10100 2200 10100 2100
Connection ~ 10100 2100
Wire Wire Line
	10175 2300 10100 2300
Wire Wire Line
	10100 2300 10100 2200
Connection ~ 10100 2200
Wire Wire Line
	10175 2400 10100 2400
Wire Wire Line
	10100 2400 10100 2300
Connection ~ 10100 2300
Wire Wire Line
	10175 2500 10100 2500
Wire Wire Line
	10100 2500 10100 2400
Connection ~ 10100 2400
Wire Wire Line
	10175 2600 10100 2600
Wire Wire Line
	10100 2600 10100 2500
Connection ~ 10100 2500
Wire Wire Line
	10175 2700 10100 2700
Wire Wire Line
	10100 2700 10100 2600
Connection ~ 10100 2600
$Comp
L power:GND #PWR?
U 1 1 5E8B4E34
P 10100 2700
F 0 "#PWR?" H 10100 2450 50  0001 C CNN
F 1 "GND" H 10105 2527 50  0000 C CNN
F 2 "" H 10100 2700 50  0001 C CNN
F 3 "" H 10100 2700 50  0001 C CNN
	1    10100 2700
	1    0    0    -1  
$EndComp
Connection ~ 10100 2700
Wire Wire Line
	3975 4050 2575 4050
Connection ~ 3975 4050
Wire Wire Line
	2575 3225 2575 4050
Wire Wire Line
	3975 4050 4650 4050
$EndSCHEMATC
