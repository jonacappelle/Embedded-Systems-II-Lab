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
L BQ25505RGRR:BQ25505RGRR U2
U 1 1 5E7E1716
P 2850 2525
F 0 "U2" H 4450 2912 60  0000 C CNN
F 1 "BQ25505RGRR" H 4450 2806 60  0000 C CNN
F 2 "extraFootprints:BQ25505RGRR" H 4450 2765 60  0001 C CNN
F 3 "" H 2850 2525 60  0000 C CNN
	1    2850 2525
	1    0    0    -1  
$EndComp
Text HLabel 1325 2625 0    50   Input ~ 0
input
$Comp
L Device:C CIN1_2
U 1 1 5E833BB2
P 6750 2775
F 0 "CIN1_2" H 6865 2821 50  0000 L CNN
F 1 "4.7 uF" H 6865 2730 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6788 2625 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2013 2900 50  0001 C CNN
F 3 "~" H 1975 3050 50  0001 C CNN
	1    1975 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 5E833D1E
P 6400 2625
F 0 "L2" V 6590 2625 50  0000 C CNN
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
L power:GND #PWR012
U 1 1 5E834080
P 6750 3050
F 0 "#PWR012" H 6750 2800 50  0001 C CNN
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
L power:GND #PWR08
U 1 1 5E8341C0
P 1975 3300
F 0 "#PWR08" H 1975 3050 50  0001 C CNN
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
	6175 2725 6050 2725
$Comp
L Device:C CBYP1
U 1 1 5E8358D4
P 4050 1375
F 0 "CBYP1" H 3675 1450 50  0000 L CNN
F 1 "0.1 uF" H 3675 1350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4088 1225 50  0001 C CNN
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
L power:GND #PWR09
U 1 1 5E83598E
P 4275 1650
F 0 "#PWR09" H 4275 1400 50  0001 C CNN
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
	4475 1100 5350 1100
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
L Device:R ROV2
U 1 1 5E836E18
P 3975 4300
F 0 "ROV2" H 4045 4346 50  0000 L CNN
F 1 "7.32 M" H 4045 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3905 4300 50  0001 C CNN
F 3 "~" H 3975 4300 50  0001 C CNN
	1    3975 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R ROV1
U 1 1 5E836ECF
P 3975 4825
F 0 "ROV1" H 4045 4871 50  0000 L CNN
F 1 "5.62 M" H 4045 4780 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3905 4825 50  0001 C CNN
F 3 "~" H 3975 4825 50  0001 C CNN
	1    3975 4825
	1    0    0    -1  
$EndComp
$Comp
L Device:R ROK3
U 1 1 5E836F59
P 4650 4275
F 0 "ROK3" H 4720 4321 50  0000 L CNN
F 1 "1.3 M" H 4720 4230 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4580 4275 50  0001 C CNN
F 3 "~" H 4650 4275 50  0001 C CNN
	1    4650 4275
	1    0    0    -1  
$EndComp
$Comp
L Device:R ROK2
U 1 1 5E83700D
P 4650 4700
F 0 "ROK2" H 4720 4746 50  0000 L CNN
F 1 "6.34 M" H 4720 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4580 4700 50  0001 C CNN
F 3 "~" H 4650 4700 50  0001 C CNN
	1    4650 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R ROK1
U 1 1 5E8370A5
P 4650 5125
F 0 "ROK1" H 4720 5171 50  0000 L CNN
F 1 "5.23" H 4720 5080 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4580 5125 50  0001 C CNN
F 3 "~" H 4650 5125 50  0001 C CNN
	1    4650 5125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E837170
P 4300 5550
F 0 "#PWR010" H 4300 5300 50  0001 C CNN
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
$Comp
L Device:Battery_Cell BT1
U 1 1 5E8453D4
P 8425 3650
F 0 "BT1" H 8543 3746 50  0000 L CNN
F 1 "Battery_Cell" H 8543 3655 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 8425 3710 50  0001 C CNN
F 3 "~" V 8425 3710 50  0001 C CNN
	1    8425 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5E8454B4
P 8425 3900
F 0 "#PWR013" H 8425 3650 50  0001 C CNN
F 1 "GND" H 8430 3727 50  0000 C CNN
F 2 "" H 8425 3900 50  0001 C CNN
F 3 "" H 8425 3900 50  0001 C CNN
	1    8425 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 3350 8425 3450
Wire Wire Line
	8425 3750 8425 3825
NoConn ~ 6050 2525
$Comp
L Device:C C6
U 1 1 5E84B5C8
P 8975 1250
F 0 "C6" H 9090 1296 50  0000 L CNN
F 1 "1u" H 9090 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9013 1100 50  0001 C CNN
F 3 "~" H 8975 1250 50  0001 C CNN
	1    8975 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5E84B64A
P 6350 1300
F 0 "#PWR011" H 6350 1050 50  0001 C CNN
F 1 "GND" H 6355 1127 50  0000 C CNN
F 2 "" H 6350 1300 50  0001 C CNN
F 3 "" H 6350 1300 50  0001 C CNN
	1    6350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3225 6125 3225
Wire Wire Line
	6125 3225 6125 3125
Connection ~ 6125 3125
NoConn ~ 2850 3325
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 5E867A15
P 9500 3350
F 0 "J6" H 9527 3326 50  0000 L CNN
F 1 "conn_meas_battery" H 9527 3235 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9500 3350 50  0001 C CNN
F 3 "~" H 9500 3350 50  0001 C CNN
	1    9500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3350 8425 3350
Wire Wire Line
	8425 3825 9300 3825
Wire Wire Line
	9300 3825 9300 3450
Connection ~ 8425 3825
Wire Wire Line
	8425 3825 8425 3900
Wire Wire Line
	9425 800  9350 800 
Wire Wire Line
	9350 800  9350 900 
Wire Wire Line
	9350 900  9425 900 
Wire Wire Line
	9350 900  9350 1000
Wire Wire Line
	9350 1000 9425 1000
Connection ~ 9350 900 
Wire Wire Line
	9350 1000 9350 1100
Connection ~ 9350 1000
Connection ~ 9350 1100
Wire Wire Line
	9350 1100 9425 1100
Wire Wire Line
	9350 1100 9350 1200
Wire Wire Line
	9350 1200 9425 1200
Wire Wire Line
	9350 1300 9425 1300
Wire Wire Line
	9350 1200 9350 1300
Connection ~ 9350 1200
Wire Wire Line
	9350 1300 9350 1400
Wire Wire Line
	9350 1400 9425 1400
Connection ~ 9350 1300
Wire Wire Line
	9425 1500 9350 1500
Wire Wire Line
	9350 1500 9350 1400
Connection ~ 9350 1400
Connection ~ 9350 1500
Wire Wire Line
	9425 1700 9350 1700
Wire Wire Line
	9425 1800 9350 1800
Wire Wire Line
	9350 1800 9350 1700
Connection ~ 9350 1700
Wire Wire Line
	9425 1900 9350 1900
Wire Wire Line
	9350 1900 9350 1800
Connection ~ 9350 1800
Wire Wire Line
	9425 2000 9350 2000
Wire Wire Line
	9350 2000 9350 1900
Connection ~ 9350 1900
Wire Wire Line
	9425 2100 9350 2100
Wire Wire Line
	9350 2100 9350 2000
Connection ~ 9350 2000
Wire Wire Line
	9425 2200 9350 2200
Wire Wire Line
	9350 2200 9350 2100
Connection ~ 9350 2100
Wire Wire Line
	9425 2300 9350 2300
Wire Wire Line
	9350 2300 9350 2200
Connection ~ 9350 2200
Wire Wire Line
	9425 2400 9350 2400
Wire Wire Line
	9350 2400 9350 2300
Connection ~ 9350 2300
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
Connection ~ 10100 1500
Wire Wire Line
	10175 1700 10100 1700
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
Connection ~ 10100 2400
$Comp
L power:GND #PWR015
U 1 1 5E8B4E34
P 10100 2475
F 0 "#PWR015" H 10100 2225 50  0001 C CNN
F 1 "GND" H 10105 2302 50  0000 C CNN
F 2 "" H 10100 2475 50  0001 C CNN
F 3 "" H 10100 2475 50  0001 C CNN
	1    10100 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 4050 2575 4050
Connection ~ 3975 4050
Wire Wire Line
	2575 3225 2575 4050
Wire Wire Line
	3975 4050 4650 4050
$Comp
L Connector:Conn_01x08_Female J7
U 1 1 5E81FBA9
P 9625 1100
F 0 "J7" H 9652 1076 50  0000 L CNN
F 1 "Conn_3V3_2" H 9652 985 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9625 1100 50  0001 C CNN
F 3 "~" H 9625 1100 50  0001 C CNN
	1    9625 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J8
U 1 1 5E81FCA5
P 9625 2000
F 0 "J8" H 9652 1976 50  0000 L CNN
F 1 "Conn_3V3" H 9652 1885 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9625 2000 50  0001 C CNN
F 3 "~" H 9625 2000 50  0001 C CNN
	1    9625 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1500 9350 1700
$Comp
L Connector:Conn_01x08_Female J9
U 1 1 5E8200CA
P 10375 1100
F 0 "J9" H 10402 1076 50  0000 L CNN
F 1 "Conn_GND" H 10402 985 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 10375 1100 50  0001 C CNN
F 3 "~" H 10375 1100 50  0001 C CNN
	1    10375 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J10
U 1 1 5E820156
P 10375 2000
F 0 "J10" H 10402 1976 50  0000 L CNN
F 1 "Conn_GND_2" H 10402 1885 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 10375 2000 50  0001 C CNN
F 3 "~" H 10375 2000 50  0001 C CNN
	1    10375 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1500 10100 1700
Wire Wire Line
	10100 2400 10100 2475
$Comp
L Connector:Conn_01x02_Female J5
U 1 1 5E82082A
P 1125 2925
F 0 "J5" H 1152 2901 50  0000 L CNN
F 1 "conn_meas_VREF_Sample" H 950 3000 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1125 2925 50  0001 C CNN
F 3 "~" H 1125 2925 50  0001 C CNN
	1    1125 2925
	-1   0    0    1   
$EndComp
Wire Wire Line
	1325 2825 1975 2825
Connection ~ 1975 2825
Wire Wire Line
	1450 2925 1450 3250
Wire Wire Line
	1450 3250 1975 3250
Wire Wire Line
	1325 2925 1450 2925
$Comp
L AP7365:AP7365-WG-7 U3
U 1 1 5E83BC83
P 6425 1100
F 0 "U3" H 7525 1487 60  0000 C CNN
F 1 "AP7365-WG-7" H 7525 1381 60  0000 C CNN
F 2 "extraFootprints:AP7365-WG-7" H 7525 1340 60  0001 C CNN
F 3 "" H 6425 1100 60  0000 C CNN
	1    6425 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1300 6350 1200
Wire Wire Line
	6350 1200 6425 1200
Wire Wire Line
	8700 1300 8700 1575
Wire Wire Line
	8700 1575 6175 1575
Wire Wire Line
	6175 1575 6175 2725
Wire Wire Line
	8625 1100 8975 1100
Connection ~ 8975 1100
Wire Wire Line
	8975 1100 9350 1100
$Comp
L Device:C C5
U 1 1 5E8547C7
P 5875 1250
F 0 "C5" H 5990 1296 50  0000 L CNN
F 1 "1u" H 5990 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5913 1100 50  0001 C CNN
F 3 "~" H 5875 1250 50  0001 C CNN
	1    5875 1250
	1    0    0    -1  
$EndComp
Connection ~ 5875 1100
Wire Wire Line
	5875 1100 6425 1100
Wire Wire Line
	6175 1575 5350 1575
Wire Wire Line
	5350 1575 5350 1100
Connection ~ 6175 1575
Connection ~ 5350 1100
Wire Wire Line
	5350 1100 5875 1100
Wire Wire Line
	5875 1400 5875 1475
Wire Wire Line
	5875 1475 6225 1475
Wire Wire Line
	6225 1475 6225 1200
Wire Wire Line
	6225 1200 6350 1200
Connection ~ 6350 1200
$Comp
L power:GND #PWR014
U 1 1 5E85F4B7
P 8975 1500
F 0 "#PWR014" H 8975 1250 50  0001 C CNN
F 1 "GND" H 8980 1327 50  0000 C CNN
F 2 "" H 8975 1500 50  0001 C CNN
F 3 "" H 8975 1500 50  0001 C CNN
	1    8975 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8625 1300 8700 1300
Wire Wire Line
	8975 1500 8975 1400
Wire Wire Line
	2850 3125 2400 3125
Connection ~ 8425 3350
Wire Wire Line
	6500 2825 6500 3350
Wire Wire Line
	6050 2825 6500 2825
Wire Wire Line
	6500 3350 8425 3350
$EndSCHEMATC
