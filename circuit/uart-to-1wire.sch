EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Transistor_FET:IRLML2060 Q?
U 1 1 5EB32456
P 4450 2925
F 0 "Q?" H 4654 2971 50  0000 L CNN
F 1 "IRLML2502" H 4654 2880 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4650 2850 50  0001 L CIN
F 3 "https://static.chipdip.ru/lib/144/DOC000144667.pdf" H 4450 2925 50  0001 L CNN
	1    4450 2925
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB34252
P 4000 2925
F 0 "R?" V 3793 2925 50  0000 C CNN
F 1 "2.2K" V 3884 2925 50  0000 C CNN
F 2 "" V 3930 2925 50  0001 C CNN
F 3 "~" H 4000 2925 50  0001 C CNN
	1    4000 2925
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB353A4
P 4550 2350
F 0 "R?" H 4480 2304 50  0000 R CNN
F 1 "4.7K" H 4480 2395 50  0000 R CNN
F 2 "" V 4480 2350 50  0001 C CNN
F 3 "~" H 4550 2350 50  0001 C CNN
	1    4550 2350
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRLML2060 Q?
U 1 1 5EB35933
P 5400 2950
F 0 "Q?" H 5604 2996 50  0000 L CNN
F 1 "IRLML2502" H 5604 2905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5600 2875 50  0001 L CIN
F 3 "https://static.chipdip.ru/lib/144/DOC000144667.pdf" H 5400 2950 50  0001 L CNN
	1    5400 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EB37236
P 5500 2350
F 0 "R?" H 5430 2304 50  0000 R CNN
F 1 "2.2K" H 5430 2395 50  0000 R CNN
F 2 "" V 5430 2350 50  0001 C CNN
F 3 "~" H 5500 2350 50  0001 C CNN
	1    5500 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 2725 4550 2600
Wire Wire Line
	4550 2600 5200 2600
Wire Wire Line
	5200 2600 5200 2950
Connection ~ 4550 2600
Wire Wire Line
	4550 2600 4550 2500
Wire Wire Line
	4150 2925 4250 2925
Wire Wire Line
	4550 2200 5025 2200
$Comp
L power:GND #PWR?
U 1 1 5EB38B57
P 5500 3250
F 0 "#PWR?" H 5500 3000 50  0001 C CNN
F 1 "GND" H 5505 3077 50  0000 C CNN
F 2 "" H 5500 3250 50  0001 C CNN
F 3 "" H 5500 3250 50  0001 C CNN
	1    5500 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB38F5B
P 4550 3250
F 0 "#PWR?" H 4550 3000 50  0001 C CNN
F 1 "GND" H 4555 3077 50  0000 C CNN
F 2 "" H 4550 3250 50  0001 C CNN
F 3 "" H 4550 3250 50  0001 C CNN
	1    4550 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3250 4550 3125
Wire Wire Line
	5500 3250 5500 3150
$Comp
L Device:R R?
U 1 1 5EB3BE3A
P 6175 2950
F 0 "R?" H 6105 2904 50  0000 R CNN
F 1 "4.7K" H 6105 2995 50  0000 R CNN
F 2 "" V 6105 2950 50  0001 C CNN
F 3 "~" H 6175 2950 50  0001 C CNN
	1    6175 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EB3CA89
P 6175 3450
F 0 "R?" H 6105 3404 50  0000 R CNN
F 1 "10K" H 6105 3495 50  0000 R CNN
F 2 "" V 6105 3450 50  0001 C CNN
F 3 "~" H 6175 3450 50  0001 C CNN
	1    6175 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2500 5500 2600
Wire Wire Line
	5500 2600 6175 2600
Wire Wire Line
	6175 2600 6175 2800
Connection ~ 5500 2600
Wire Wire Line
	5500 2600 5500 2750
Wire Wire Line
	6175 3300 6175 3200
$Comp
L power:GND #PWR?
U 1 1 5EB443FC
P 6175 3650
F 0 "#PWR?" H 6175 3400 50  0001 C CNN
F 1 "GND" H 6180 3477 50  0000 C CNN
F 2 "" H 6175 3650 50  0001 C CNN
F 3 "" H 6175 3650 50  0001 C CNN
	1    6175 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6175 3650 6175 3600
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5EB4ED8A
P 3300 3025
F 0 "J?" H 3218 3250 50  0000 C CNN
F 1 "Uart" H 3218 3251 50  0001 C CNN
F 2 "" H 3300 3025 50  0001 C CNN
F 3 "~" H 3300 3025 50  0001 C CNN
	1    3300 3025
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 2925 3850 2925
Wire Wire Line
	6175 3200 5750 3200
Wire Wire Line
	5750 3200 5750 3650
Wire Wire Line
	5750 3650 3750 3650
Wire Wire Line
	3750 3650 3750 3025
Wire Wire Line
	3750 3025 3500 3025
Connection ~ 6175 3200
Wire Wire Line
	6175 3200 6175 3100
$Comp
L power:GND #PWR?
U 1 1 5EB57AC0
P 3550 3225
F 0 "#PWR?" H 3550 2975 50  0001 C CNN
F 1 "GND" H 3555 3052 50  0000 C CNN
F 2 "" H 3550 3225 50  0001 C CNN
F 3 "" H 3550 3225 50  0001 C CNN
	1    3550 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3125 3550 3125
Wire Wire Line
	3550 3125 3550 3225
Text Label 3550 2925 0    50   ~ 0
TX
Text Label 3550 3025 0    50   ~ 0
RX
Text Label 5975 2600 0    50   ~ 0
1Wire
$Comp
L power:+5V #PWR?
U 1 1 5EB5F2D7
P 5025 2200
F 0 "#PWR?" H 5025 2050 50  0001 C CNN
F 1 "+5V" H 5040 2373 50  0000 C CNN
F 2 "" H 5025 2200 50  0001 C CNN
F 3 "" H 5025 2200 50  0001 C CNN
	1    5025 2200
	1    0    0    -1  
$EndComp
Connection ~ 5025 2200
Wire Wire Line
	5025 2200 5500 2200
Text Notes 6425 2450 0    50   ~ 0
5V signal level
Text Notes 3250 2675 0    50   ~ 0
3.3V signal level
Text Notes 6475 3250 0    50   ~ 0
5 -> 3.3 Level shifter
Wire Notes Line
	6375 2800 6450 2800
Wire Notes Line
	6450 2800 6450 3650
Wire Notes Line
	6450 3650 6375 3650
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5EB7B32F
P 6875 2600
F 0 "J?" H 6955 2546 50  0000 L CNN
F 1 "1Wire" H 6955 2501 50  0001 L CNN
F 2 "" H 6875 2600 50  0001 C CNN
F 3 "~" H 6875 2600 50  0001 C CNN
	1    6875 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6175 2600 6675 2600
Connection ~ 6175 2600
$Comp
L power:GND #PWR?
U 1 1 5EB80B6C
P 6600 2775
F 0 "#PWR?" H 6600 2525 50  0001 C CNN
F 1 "GND" H 6605 2602 50  0000 C CNN
F 2 "" H 6600 2775 50  0001 C CNN
F 3 "" H 6600 2775 50  0001 C CNN
	1    6600 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6675 2700 6600 2700
Wire Wire Line
	6600 2700 6600 2775
Text Notes 4450 1850 0    50   ~ 0
Note: For easy copy/pasting this circuit,\ncomponents not annotated
$EndSCHEMATC
