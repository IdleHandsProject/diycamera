EESchema Schematic File Version 4
LIBS:adxl345
LIBS:digiobscura_mcu-cache
EELAYER 29 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 1
Title "McMaster Pulse Oximeter"
Date "2019-01-24"
Rev ""
Comp "Idle Hands Dev."
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R_Small R3
U 1 1 56BE56C8
P 2800 2200
F 0 "R3" H 2830 2220 50  0000 L CNN
F 1 "10k" H 2830 2160 50  0001 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2800 2200 60  0001 C CNN
F 3 "" H 2800 2200 60  0000 C CNN
F 4 "311-10KARCT-ND" H 2800 2200 60  0001 C CNN "Digikey Part No."
	1    2800 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 56BE5797
P 2300 2800
F 0 "C3" H 2310 2870 50  0000 L CNN
F 1 "0.1uF" H 2310 2720 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2300 2800 60  0001 C CNN
F 3 "" H 2300 2800 60  0000 C CNN
F 4 "1276-1286-1-ND" H 2300 2800 60  0001 C CNN "Digikey Part No."
	1    2300 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 56BE5879
P 2450 2800
F 0 "C5" H 2460 2870 50  0000 L CNN
F 1 "0.1uF" H 2460 2720 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2450 2800 60  0001 C CNN
F 3 "" H 2450 2800 60  0000 C CNN
F 4 "1276-1286-1-ND" H 2450 2800 60  0001 C CNN "Digikey Part No."
	1    2450 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 56BE5A3E
P 1600 2900
F 0 "C1" H 1610 2970 50  0000 L CNN
F 1 "0.1uF" H 1610 2820 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1600 2900 60  0001 C CNN
F 3 "" H 1600 2900 60  0000 C CNN
F 4 "1276-1286-1-ND" H 1600 2900 60  0001 C CNN "Digikey Part No."
	1    1600 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 56BE5A87
P 1900 3600
F 0 "C2" H 1910 3670 50  0000 L CNN
F 1 "22pF" H 1910 3520 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1900 3600 60  0001 C CNN
F 3 "" H 1900 3600 60  0000 C CNN
F 4 "311-1103-1-ND" H 1900 3600 60  0001 C CNN "Digikey Part No."
	1    1900 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 56BE5ACF
P 2100 3600
F 0 "C4" H 2110 3670 50  0000 L CNN
F 1 "22pF" H 2110 3520 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2100 3600 60  0001 C CNN
F 3 "" H 2100 3600 60  0000 C CNN
F 4 "311-1103-1-ND" H 2100 3600 60  0001 C CNN "Digikey Part No."
	1    2100 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small Y1
U 1 1 56BE5D1C
P 2000 3350
F 0 "Y1" H 2000 3450 50  0000 C CNN
F 1 "Crystal_Small" H 2000 3250 50  0001 C CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 2000 3350 60  0001 C CNN
F 3 "" H 2000 3350 60  0000 C CNN
F 4 "XC1617CT-ND" H 2000 3350 60  0001 C CNN "Digikey Part No."
	1    2000 3350
	-1   0    0    1   
$EndComp
$Comp
L digiobscura_mcu-rescue:+3.3V--karmaglitterbomb-rescue-kgb_ctrl_v2-rescue-pulse_oximeter-rescue #PWR01
U 1 1 56BE5E8C
P 2800 2000
F 0 "#PWR01" H 2800 1850 50  0001 C CNN
F 1 "+3.3V" H 2800 2140 50  0000 C CNN
F 2 "" H 2800 2000 60  0000 C CNN
F 3 "" H 2800 2000 60  0000 C CNN
	1    2800 2000
	1    0    0    -1  
$EndComp
$Comp
L digiobscura_mcu-rescue:+3.3V--karmaglitterbomb-rescue-kgb_ctrl_v2-rescue-pulse_oximeter-rescue #PWR02
U 1 1 56BE5EB9
P 2300 2000
F 0 "#PWR02" H 2300 1850 50  0001 C CNN
F 1 "+3.3V" H 2300 2140 50  0000 C CNN
F 2 "" H 2300 2000 60  0000 C CNN
F 3 "" H 2300 2000 60  0000 C CNN
	1    2300 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56BE5ED8
P 2300 2950
F 0 "#PWR03" H 2300 2700 50  0001 C CNN
F 1 "GND" H 2300 2800 50  0000 C CNN
F 2 "" H 2300 2950 60  0000 C CNN
F 3 "" H 2300 2950 60  0000 C CNN
	1    2300 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56BE5F05
P 2450 2950
F 0 "#PWR04" H 2450 2700 50  0001 C CNN
F 1 "GND" H 2450 2800 50  0000 C CNN
F 2 "" H 2450 2950 60  0000 C CNN
F 3 "" H 2450 2950 60  0000 C CNN
	1    2450 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 56BE63B6
P 1600 3050
F 0 "#PWR05" H 1600 2800 50  0001 C CNN
F 1 "GND" H 1600 2900 50  0000 C CNN
F 2 "" H 1600 3050 60  0000 C CNN
F 3 "" H 1600 3050 60  0000 C CNN
	1    1600 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 56BE6486
P 2000 3800
F 0 "#PWR06" H 2000 3550 50  0001 C CNN
F 1 "GND" H 2000 3650 50  0000 C CNN
F 2 "" H 2000 3800 60  0000 C CNN
F 3 "" H 2000 3800 60  0000 C CNN
	1    2000 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 56BE5364
P 5900 2400
F 0 "C11" H 5910 2470 50  0000 L CNN
F 1 "0.1uF" H 5910 2320 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5900 2400 60  0001 C CNN
F 3 "" H 5900 2400 60  0000 C CNN
F 4 "1276-1286-1-ND" H 5900 2400 60  0001 C CNN "Digikey Part No."
	1    5900 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 56BE54D8
P 6100 2400
F 0 "C12" H 6110 2470 50  0000 L CNN
F 1 "0.1uF" H 6110 2320 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6100 2400 60  0001 C CNN
F 3 "" H 6100 2400 60  0000 C CNN
F 4 "1276-1286-1-ND" H 6100 2400 60  0001 C CNN "Digikey Part No."
	1    6100 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 56BE5515
P 5500 2000
F 0 "#PWR07" H 5500 1850 50  0001 C CNN
F 1 "+3.3V" H 5500 2140 50  0000 C CNN
F 2 "" H 5500 2000 60  0000 C CNN
F 3 "" H 5500 2000 60  0000 C CNN
	1    5500 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 56BE5541
P 6000 2600
F 0 "#PWR08" H 6000 2350 50  0001 C CNN
F 1 "GND" H 6000 2450 50  0000 C CNN
F 2 "" H 6000 2600 60  0000 C CNN
F 3 "" H 6000 2600 60  0000 C CNN
	1    6000 2600
	1    0    0    -1  
$EndComp
$Comp
L digiobscura_mcu-rescue:USB_OTG-conn-kgb_ctrl_v2-rescue-pulse_oximeter-rescue P1
U 1 1 56BE58D4
P 7000 4600
F 0 "P1" H 7325 4475 50  0000 C CNN
F 1 "USB_OTG" H 7000 4800 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" V 6950 4500 60  0001 C CNN
F 3 "" V 6950 4500 60  0000 C CNN
F 4 "455-1752-1-ND" H 7000 4600 60  0001 C CNN "Digikey Part No."
	1    7000 4600
	1    0    0    -1  
$EndComp
$Comp
L digiobscura_mcu-rescue:F_Small-karmaglitterbomb-rescue-kgb_ctrl_v2-rescue-pulse_oximeter-rescue F1
U 1 1 56BE60F0
P 7500 4400
F 0 "F1" H 7460 4460 50  0000 L CNN
F 1 "500mA" H 7380 4340 50  0000 L CNN
F 2 "Fuse:Fuse_1210_3225Metric" H 7500 4400 60  0001 C CNN
F 3 "" H 7500 4400 60  0000 C CNN
F 4 "507-1803-1-ND" H 7500 4400 60  0001 C CNN "Digikey Part No."
	1    7500 4400
	1    0    0    -1  
$EndComp
$Comp
L digiobscura_mcu-rescue:AP2112K-3.3V-karmaglitterbomb-rescue-kgb_ctrl_v2-rescue-pulse_oximeter-rescue U3
U 1 1 56BE77A3
P 4650 7800
F 0 "U3" H 4400 8000 40  0000 C CNN
F 1 "SPX3819-3.3V" H 4750 8000 40  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4650 7900 35  0000 C CIN
F 3 "" H 4650 7800 60  0000 C CNN
F 4 "1016-1873-1-ND" H 4650 7800 60  0001 C CNN "Digikey Part No."
	1    4650 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 56BE9290
P 3750 8000
F 0 "C8" H 3650 8100 50  0000 L CNN
F 1 "1uF" H 3760 7920 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3750 8000 60  0001 C CNN
F 3 "" H 3750 8000 60  0000 C CNN
F 4 "1276-3010-1-ND" H 3750 8000 60  0001 C CNN "Digikey Part No."
	1    3750 8000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 56C10A31
P 7000 5150
F 0 "#PWR010" H 7000 4900 50  0001 C CNN
F 1 "GND" H 7000 5000 50  0000 C CNN
F 2 "" H 7000 5150 60  0000 C CNN
F 3 "" H 7000 5150 60  0000 C CNN
	1    7000 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 56C11E63
P 4650 8250
F 0 "#PWR011" H 4650 8000 50  0001 C CNN
F 1 "GND" H 4650 8100 50  0000 C CNN
F 2 "" H 4650 8250 60  0000 C CNN
F 3 "" H 4650 8250 60  0000 C CNN
	1    4650 8250
	1    0    0    -1  
$EndComp
Text GLabel 7550 4700 2    60   Input ~ 0
USB_D-
Text GLabel 7550 4600 2    60   Input ~ 0
USB_D+
Text GLabel 7550 4800 2    60   Input ~ 0
USB_ID
$Comp
L digiobscura_mcu-rescue:+3.3V--karmaglitterbomb-rescue-kgb_ctrl_v2-rescue-pulse_oximeter-rescue #PWR012
U 1 1 56C15B89
P 5250 7650
F 0 "#PWR012" H 5250 7500 50  0001 C CNN
F 1 "+3.3V" H 5250 7790 50  0000 C CNN
F 2 "" H 5250 7650 60  0000 C CNN
F 3 "" H 5250 7650 60  0000 C CNN
	1    5250 7650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 56C15D54
P 5400 8000
F 0 "C9" H 5410 8070 50  0000 L CNN
F 1 "2.2uF" H 5410 7920 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5400 8000 60  0001 C CNN
F 3 "" H 5400 8000 60  0000 C CNN
F 4 "311-1463-1-ND" H 5400 8000 60  0001 C CNN "Digikey Part No."
	1    5400 8000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 56C15E3A
P 5400 8200
F 0 "#PWR013" H 5400 7950 50  0001 C CNN
F 1 "GND" H 5400 8050 50  0000 C CNN
F 2 "" H 5400 8200 60  0000 C CNN
F 3 "" H 5400 8200 60  0000 C CNN
	1    5400 8200
	1    0    0    -1  
$EndComp
Text Notes 7100 4200 0    79   Italic 16
USB
$Comp
L power:GND #PWR014
U 1 1 56E1705D
P 2800 5450
F 0 "#PWR014" H 2800 5200 50  0001 C CNN
F 1 "GND" H 2800 5300 50  0000 C CNN
F 2 "" H 2800 5450 60  0000 C CNN
F 3 "" H 2800 5450 60  0000 C CNN
	1    2800 5450
	1    0    0    -1  
$EndComp
Text GLabel 2600 2450 0    60   Input ~ 0
RESET
Text GLabel 5300 4550 2    60   Input ~ 0
SWCLK
Text GLabel 5300 4650 2    60   Input ~ 0
SWDIO
Text GLabel 7300 2800 2    60   Input ~ 0
SWCLK
Text GLabel 7300 2600 2    60   Input ~ 0
SWDIO
$Comp
L power:GND #PWR015
U 1 1 57050FFC
P 7700 3100
F 0 "#PWR015" H 7700 2850 50  0001 C CNN
F 1 "GND" H 7700 2950 50  0000 C CNN
F 2 "" H 7700 3100 60  0000 C CNN
F 3 "" H 7700 3100 60  0000 C CNN
	1    7700 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR016
U 1 1 570510C7
P 7450 2450
F 0 "#PWR016" H 7450 2300 50  0001 C CNN
F 1 "+3.3V" H 7450 2590 50  0000 C CNN
F 2 "" H 7450 2450 60  0000 C CNN
F 3 "" H 7450 2450 60  0000 C CNN
	1    7450 2450
	1    0    0    -1  
$EndComp
Text GLabel 7300 2900 2    60   Input ~ 0
RESET
Text GLabel 5400 4150 2    60   Input ~ 0
USB_D-
Text GLabel 5400 4250 2    60   Input ~ 0
USB_D+
Text GLabel 5400 4450 2    60   Input ~ 0
USB_HOST_EN
$Comp
L digiobscura_mcu-rescue:SW_PUSH-karmaglitterbomb-rescue-kgb_ctrl_v2-rescue-pulse_oximeter-rescue RST1
U 1 1 57898945
P 1700 5250
F 0 "RST1" H 1850 5360 50  0000 C CNN
F 1 "SW_PUSH" H 1700 5170 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P" H 1700 5250 60  0001 C CNN
F 3 "" H 1700 5250 60  0000 C CNN
F 4 "SW1020CT-ND" H 1700 5250 60  0001 C CNN "Digikey Part No."
	1    1700 5250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5789A9F6
P 2050 5350
F 0 "#PWR017" H 2050 5100 50  0001 C CNN
F 1 "GND" H 2050 5200 50  0000 C CNN
F 2 "" H 2050 5350 60  0000 C CNN
F 3 "" H 2050 5350 60  0000 C CNN
	1    2050 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2450 2800 2450
Wire Wire Line
	2800 2450 2800 2300
Wire Wire Line
	2800 2100 2800 2000
Wire Wire Line
	2300 2000 2300 2550
Wire Wire Line
	2950 2550 2300 2550
Connection ~ 2300 2550
Wire Wire Line
	2450 2700 2450 2650
Wire Wire Line
	2450 2650 2950 2650
Wire Wire Line
	2300 2900 2300 2950
Wire Wire Line
	2450 2900 2450 2950
Wire Wire Line
	2000 2700 1600 2700
Wire Wire Line
	1600 3050 1600 3000
Wire Wire Line
	2950 3200 1900 3200
Wire Wire Line
	2100 3300 2950 3300
Wire Wire Line
	1900 3700 1900 3800
Wire Wire Line
	2100 3800 2100 3700
Wire Wire Line
	5500 2300 5100 2300
Wire Wire Line
	5500 2000 5500 2150
Wire Wire Line
	5500 2150 5900 2150
Wire Wire Line
	6100 2150 6100 2300
Connection ~ 5500 2150
Wire Wire Line
	5900 2150 5900 2300
Connection ~ 5900 2150
Wire Wire Line
	5500 2400 5100 2400
Connection ~ 5500 2300
Wire Wire Line
	5900 2500 6000 2500
Wire Wire Line
	6000 2500 6000 2600
Connection ~ 6000 2500
Wire Wire Line
	7300 4400 7400 4400
Wire Wire Line
	7300 4600 7550 4600
Wire Wire Line
	7300 4700 7550 4700
Wire Wire Line
	7300 4800 7550 4800
Wire Wire Line
	7000 5000 7000 5150
Wire Wire Line
	7600 4400 7700 4400
Wire Wire Line
	3750 7900 3750 7750
Connection ~ 3750 7750
Wire Wire Line
	4650 8100 4650 8150
Wire Wire Line
	3750 8100 3750 8150
Wire Wire Line
	3750 8150 4650 8150
Connection ~ 4650 8150
Wire Wire Line
	7700 4300 7700 4400
Wire Wire Line
	5100 7750 5250 7750
Wire Wire Line
	5400 7750 5400 7900
Wire Wire Line
	5400 8200 5400 8100
Wire Wire Line
	5250 7750 5250 7650
Connection ~ 5250 7750
Wire Wire Line
	2950 4200 2900 4200
Wire Wire Line
	2950 4300 2900 4300
Wire Wire Line
	2950 4950 2800 4950
Wire Wire Line
	2800 4550 2800 4950
Wire Wire Line
	2950 5050 2800 5050
Connection ~ 2800 5050
Wire Wire Line
	2950 5150 2800 5150
Connection ~ 2800 5150
Wire Wire Line
	5100 4550 5300 4550
Wire Wire Line
	5100 4650 5300 4650
Connection ~ 2800 2450
Wire Wire Line
	7250 2500 7450 2500
Wire Wire Line
	7250 2700 7700 2700
Wire Wire Line
	7250 2600 7300 2600
Wire Wire Line
	7250 2800 7300 2800
Wire Wire Line
	7250 2900 7300 2900
Wire Wire Line
	7450 2500 7450 2450
Wire Wire Line
	7700 2700 7700 3100
Wire Wire Line
	5100 3250 5350 3250
Wire Wire Line
	5100 3150 5350 3150
Wire Wire Line
	5100 2550 5350 2550
Wire Wire Line
	5100 2650 5350 2650
Wire Wire Line
	5100 3750 5400 3750
Wire Wire Line
	5100 3850 5400 3850
Wire Wire Line
	5100 3950 5400 3950
Wire Wire Line
	5100 4050 5400 4050
Wire Wire Line
	2950 3800 2900 3800
Wire Wire Line
	2950 3900 2900 3900
Wire Wire Line
	2950 4550 2800 4550
Connection ~ 2800 4950
Wire Wire Line
	5100 4350 5400 4350
Wire Wire Line
	5100 4450 5400 4450
Wire Wire Line
	5100 4150 5400 4150
Wire Wire Line
	5100 4250 5400 4250
Wire Wire Line
	5100 3550 5400 3550
Wire Wire Line
	5100 3650 5400 3650
Wire Wire Line
	5100 2750 5350 2750
Wire Wire Line
	5100 2850 5350 2850
Wire Wire Line
	5100 3350 5400 3350
Wire Wire Line
	5100 3450 5400 3450
Wire Wire Line
	5100 2950 5350 2950
Wire Wire Line
	2950 3700 2900 3700
Wire Wire Line
	5100 3050 5350 3050
Wire Wire Line
	1400 5250 1300 5250
Wire Wire Line
	2000 5250 2050 5250
Wire Wire Line
	2050 5250 2050 5350
Text GLabel 11300 1500 2    60   Input ~ 0
LED1
$Comp
L digiobscura_mcu-rescue:MCP73831T-mcp73831t-pulse_oximeter-rescue U4
U 1 1 5ADCC7D5
P 3450 10400
F 0 "U4" H 3200 10750 60  0000 C CNN
F 1 "MCP73812T" H 3500 10000 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3250 10850 60  0001 C CNN
F 3 "" H 3250 10850 60  0000 C CNN
F 4 "MCP73812T-420I/OTCT-ND" H 3450 10400 60  0001 C CNN "Digikey Part No."
	1    3450 10400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5ADCC7DC
P 4100 10750
F 0 "#PWR028" H 4100 10500 50  0001 C CNN
F 1 "GND" H 4100 10600 50  0000 C CNN
F 2 "" H 4100 10750 60  0000 C CNN
F 3 "" H 4100 10750 60  0000 C CNN
	1    4100 10750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 5ADCC7E4
P 4100 10350
F 0 "C15" H 4110 10420 50  0000 L CNN
F 1 "4.7uF" H 4110 10270 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4100 10350 60  0001 C CNN
F 3 "" H 4100 10350 60  0000 C CNN
F 4 "311-1371-1-ND" H 4100 10350 60  0001 C CNN "Digikey Part No."
	1    4100 10350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5ADCC7EC
P 2250 10300
F 0 "C14" H 2260 10370 50  0000 L CNN
F 1 "4.7uF" H 2260 10220 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2250 10300 60  0001 C CNN
F 3 "" H 2250 10300 60  0000 C CNN
F 4 "311-1371-1-ND" H 2250 10300 60  0001 C CNN "Digikey Part No."
	1    2250 10300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5ADCC7F9
P 2250 10550
F 0 "#PWR030" H 2250 10300 50  0001 C CNN
F 1 "GND" H 2250 10400 50  0000 C CNN
F 2 "" H 2250 10550 60  0000 C CNN
F 3 "" H 2250 10550 60  0000 C CNN
	1    2250 10550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5ADCC800
P 2600 10850
F 0 "R21" V 2680 10850 50  0000 C CNN
F 1 "6.8k" V 2600 10850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2530 10850 30  0001 C CNN
F 3 "" H 2600 10850 30  0000 C CNN
F 4 "311-6.8KARCT-ND" V 2600 10850 60  0001 C CNN "Digikey Part No."
	1    2600 10850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5ADCC807
P 2600 11100
F 0 "#PWR031" H 2600 10850 50  0001 C CNN
F 1 "GND" H 2600 10950 50  0000 C CNN
F 2 "" H 2600 11100 60  0000 C CNN
F 3 "" H 2600 11100 60  0000 C CNN
	1    2600 11100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 10200 4100 10200
Wire Wire Line
	4100 9750 4100 10200
Connection ~ 4100 10200
Wire Wire Line
	4100 10450 4100 10650
Wire Wire Line
	4050 10650 4100 10650
Connection ~ 4100 10650
Wire Wire Line
	2250 10200 2650 10200
Connection ~ 2650 10200
Wire Wire Line
	2850 10550 2600 10550
Wire Wire Line
	2600 10550 2600 10700
Wire Wire Line
	2600 11000 2600 11100
Wire Wire Line
	2850 10650 2800 10650
$Comp
L Device:LED_Small D6
U 1 1 5ADCC83B
P 2800 11300
F 0 "D6" H 2800 11400 50  0000 C CNN
F 1 "CHRG" H 2800 11250 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 2800 11300 60  0001 C CNN
F 3 "" H 2800 11300 60  0000 C CNN
F 4 "160-1436-1-ND" H 2800 11300 60  0001 C CNN "Digikey Part No."
	1    2800 11300
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 5ADCC843
P 2800 10950
F 0 "R22" V 2880 10950 50  0000 C CNN
F 1 "1K" V 2800 10950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2730 10950 30  0001 C CNN
F 3 "" H 2800 10950 30  0000 C CNN
F 4 "311-1.0KJRCT-ND" V 2800 10950 60  0001 C CNN "Digikey Part No."
	1    2800 10950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 11100 2800 11200
Wire Wire Line
	2800 10650 2800 10800
Wire Wire Line
	2800 11400 2800 11650
Wire Wire Line
	2800 11650 2500 11650
Wire Wire Line
	2500 11650 2500 11550
Wire Wire Line
	1600 2600 1600 2700
$Comp
L digiobscura_mcu-rescue:+3.3V--karmaglitterbomb-rescue-kgb_ctrl_v2-rescue-pulse_oximeter-rescue #PWR038
U 1 1 5B0DAAC1
P 1600 2600
F 0 "#PWR038" H 1600 2450 50  0001 C CNN
F 1 "+3.3V" H 1600 2740 50  0000 C CNN
F 2 "" H 1600 2600 60  0000 C CNN
F 3 "" H 1600 2600 60  0000 C CNN
	1    1600 2600
	1    0    0    -1  
$EndComp
Connection ~ 1600 2700
Wire Wire Line
	2300 2550 2300 2700
Wire Wire Line
	5500 2150 5500 2300
Wire Wire Line
	5900 2150 6100 2150
Wire Wire Line
	5500 2300 5500 2400
Wire Wire Line
	6000 2500 6100 2500
Wire Wire Line
	4650 8150 4650 8250
Wire Wire Line
	3600 7750 3750 7750
Wire Wire Line
	5250 7750 5400 7750
Wire Wire Line
	2800 5050 2800 5150
Wire Wire Line
	2800 5150 2800 5450
Wire Wire Line
	2800 2450 2950 2450
Wire Wire Line
	2800 4950 2800 5050
Wire Wire Line
	4100 10200 4100 10250
Wire Wire Line
	4100 10650 4100 10750
Wire Wire Line
	2650 10200 2850 10200
Wire Wire Line
	1600 2700 1600 2800
Wire Wire Line
	1900 3200 1900 3350
Wire Wire Line
	2100 3300 2100 3350
Wire Wire Line
	1900 3800 2000 3800
Connection ~ 2100 3350
Wire Wire Line
	2100 3350 2100 3500
Connection ~ 1900 3350
Wire Wire Line
	1900 3350 1900 3500
Connection ~ 2000 3800
Wire Wire Line
	2000 3800 2100 3800
Text GLabel 5350 2550 2    60   Input ~ 0
LED1
$Comp
L Device:Battery_Cell BT1
U 1 1 5C4B1A21
P 4650 10550
F 0 "BT1" H 4768 10646 50  0000 L CNN
F 1 "BATT1" H 4768 10555 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_1042_1x18650" V 4650 10610 50  0001 C CNN
F 3 "~" V 4650 10610 50  0001 C CNN
F 4 "36-1042P-ND" H 4650 10550 50  0001 C CNN "Digikey Part No."
	1    4650 10550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 10200 4650 10200
Wire Wire Line
	4650 10200 4650 10350
$Comp
L power:GND #PWR0110
U 1 1 5C4D5945
P 4650 10800
F 0 "#PWR0110" H 4650 10550 50  0001 C CNN
F 1 "GND" H 4650 10650 50  0000 C CNN
F 2 "" H 4650 10800 60  0000 C CNN
F 3 "" H 4650 10800 60  0000 C CNN
	1    4650 10800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 10650 4650 10800
Text Notes 2050 9150 0    98   Italic 20
18650 Battery Bank
Text Notes 2900 1700 0    157  Italic 31
SAMD21G18A Microcontroller
Text GLabel 4300 9750 2    60   Input ~ 0
VBATT
Wire Wire Line
	4300 9750 4100 9750
$Comp
L power:VCOM #PWR0102
U 1 1 5CA5253F
P 7700 4300
F 0 "#PWR0102" H 7700 4150 50  0001 C CNN
F 1 "VCOM" H 7717 4473 50  0000 C CNN
F 2 "" H 7700 4300 50  0001 C CNN
F 3 "" H 7700 4300 50  0001 C CNN
	1    7700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 7750 3600 7600
Text Notes 3250 6900 0    157  Italic 31
Power and Regulation
Text Notes 6750 2200 0    79   Italic 16
Programming Header
Text Notes 4150 7300 0    79   Italic 16
3.3V Regulator
Text Notes 10250 1100 0    79   Italic 16
Status Indicator LED
$Comp
L power:GND #PWR0115
U 1 1 5D09C574
P 10700 1800
F 0 "#PWR0115" H 10700 1550 50  0001 C CNN
F 1 "GND" H 10700 1650 50  0000 C CNN
F 2 "" H 10700 1800 60  0000 C CNN
F 3 "" H 10700 1800 60  0000 C CNN
	1    10700 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5D09C6E0
P 11050 1500
F 0 "R7" V 11130 1500 50  0000 C CNN
F 1 "1k" V 11050 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10980 1500 30  0001 C CNN
F 3 "" H 11050 1500 30  0000 C CNN
F 4 "311-1.0KARCT-ND" V 11050 1500 60  0001 C CNN "Digikey Part No."
	1    11050 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11300 1500 11200 1500
Wire Wire Line
	10700 1500 10700 1600
Text GLabel 1300 5250 0    60   Input ~ 0
RESET
Text Notes 1150 5000 0    79   Italic 16
RESET Button
Wire Notes Line
	500  12150 9650 12150
Wire Notes Line
	9650 500  9650 12150
Wire Notes Line
	9650 2300 13800 2300
Wire Notes Line
	9650 4800 13800 4800
Wire Notes Line
	13800 500  13800 6300
Wire Notes Line
	700  6100 23050 6100
Wire Notes Line
	9650 10000 22900 10000
Wire Notes Line
	11800 2300 11800 500 
Wire Wire Line
	2250 10400 2250 10550
Wire Wire Line
	2650 9700 2650 10200
$Comp
L Device:D_Schottky D2
U 1 1 5D0F3296
P 3600 7450
F 0 "D2" H 3450 7500 50  0000 C CNN
F 1 "MBR230L" H 3600 7350 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 3600 7450 60  0001 C CNN
F 3 "" H 3600 7450 60  0000 C CNN
F 4 "MBR230LSFT1GOSCT-ND" H 3600 7450 60  0001 C CNN "Digikey Part No."
	1    3600 7450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 7200 3600 7300
Wire Wire Line
	3500 7750 3600 7750
Connection ~ 3600 7750
$Comp
L power:VCOM #PWR0127
U 1 1 5D17960B
P 3600 7200
F 0 "#PWR0127" H 3600 7050 50  0001 C CNN
F 1 "VCOM" H 3617 7373 50  0000 C CNN
F 2 "" H 3600 7200 50  0001 C CNN
F 3 "" H 3600 7200 50  0001 C CNN
	1    3600 7200
	1    0    0    -1  
$EndComp
Wire Notes Line
	13800 4000 19850 4000
Wire Notes Line
	19850 4000 19850 500 
Wire Notes Line
	16600 10000 16600 6300
Text GLabel 7250 3000 2    60   Input ~ 0
TXD
Text GLabel 7250 3100 2    60   Input ~ 0
RXD
Text Notes 3250 11950 0    60   ~ 0
6.8K for 100mA Charging. Keep charging curernt low to avoid overheating. 
Text GLabel 2800 10650 0    60   Input ~ 0
st
$Comp
L Connector_Generic:Conn_01x08 J11
U 1 1 5D7A4A10
P 7050 2800
F 0 "J11" H 6968 3317 50  0000 C CNN
F 1 "Conn_01x08" H 6968 3226 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 7050 2800 50  0001 C CNN
F 3 "~" H 7050 2800 50  0001 C CNN
F 4 "S7041-ND" H 7050 2800 50  0001 C CNN "Digikey Part No."
	1    7050 2800
	-1   0    0    -1  
$EndComp
$Comp
L MCU_Microchip_SAMD:SAMD21G18A_ArduinoSimple U1
U 1 1 5D785715
P 3950 3650
F 0 "U1" H 4025 5456 40  0000 C CNN
F 1 "SAMD21G18A_ArduinoSimple" H 4025 5380 40  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 4025 5311 32  0000 C CIN
F 3 "" H 3950 3900 60  0000 C CNN
F 4 "ATSAMD21G18A-AUTCT-ND" H 3950 3650 50  0001 C CNN "Digikey Part No."
	1    3950 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2700 2000 3150
Wire Wire Line
	2000 3150 2600 3150
Wire Wire Line
	2600 3150 2600 2800
Wire Wire Line
	2600 2800 2950 2800
Text GLabel 11700 7750 0    60   Input ~ 0
CSCOL
Text GLabel 15000 7500 0    60   Input ~ 0
CSROW
Text GLabel 11700 7850 0    60   Input ~ 0
WRCOL
Text GLabel 15000 7400 0    60   Input ~ 0
WRROW
Text GLabel 11700 7950 0    60   Input ~ 0
ENCOL
Text GLabel 15000 7300 0    60   Input ~ 0
ENROW
$Comp
L Connector_Generic:Conn_01x11 J3
U 1 1 5E1A7143
P 11900 7650
F 0 "J3" H 11980 7692 50  0000 L CNN
F 1 "COL" H 11980 7601 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x11_P2.54mm_Vertical" H 11900 7650 50  0001 C CNN
F 3 "~" H 11900 7650 50  0001 C CNN
F 4 "S7044-ND" H 11900 7650 50  0001 C CNN "Digikey Part No."
	1    11900 7650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 5E1A714F
P 11550 7050
F 0 "#PWR0101" H 11550 6900 50  0001 C CNN
F 1 "+3V3" H 11565 7223 50  0000 C CNN
F 2 "" H 11550 7050 50  0000 C CNN
F 3 "" H 11550 7050 50  0000 C CNN
	1    11550 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5E1A7155
P 11500 8250
F 0 "#PWR0103" H 11500 8000 50  0001 C CNN
F 1 "GND" H 11505 8077 50  0000 C CNN
F 2 "" H 11500 8250 50  0000 C CNN
F 3 "" H 11500 8250 50  0000 C CNN
	1    11500 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11700 7150 11550 7150
Wire Wire Line
	11550 7150 11550 7050
Wire Wire Line
	11700 8150 11500 8150
Wire Wire Line
	11500 8150 11500 8250
Text GLabel 10400 8050 0    60   Input ~ 0
OUTCOL
Text GLabel 11700 7250 0    60   Input ~ 0
A0COL
Text GLabel 11700 7350 0    60   Input ~ 0
A1COL
Text GLabel 11700 7450 0    60   Input ~ 0
A2COL
Text GLabel 11700 7550 0    60   Input ~ 0
A3COL
Text GLabel 11700 7650 0    60   Input ~ 0
A4COL
$Comp
L power:+3V3 #PWR0104
U 1 1 5E1A7165
P 14850 7050
F 0 "#PWR0104" H 14850 6900 50  0001 C CNN
F 1 "+3V3" H 14865 7223 50  0000 C CNN
F 2 "" H 14850 7050 50  0000 C CNN
F 3 "" H 14850 7050 50  0000 C CNN
	1    14850 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5E1A716B
P 14850 8200
F 0 "#PWR0105" H 14850 7950 50  0001 C CNN
F 1 "GND" H 14855 8027 50  0000 C CNN
F 2 "" H 14850 8200 50  0000 C CNN
F 3 "" H 14850 8200 50  0000 C CNN
	1    14850 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	15000 8100 14850 8100
Wire Wire Line
	14850 8100 14850 8200
Wire Wire Line
	15000 7100 14850 7100
Wire Wire Line
	14850 7100 14850 7050
Text GLabel 15000 8000 0    60   Input ~ 0
A0ROW
Text GLabel 15000 7900 0    60   Input ~ 0
A1ROW
Text GLabel 15000 7800 0    60   Input ~ 0
A2ROW
Text GLabel 15000 7700 0    60   Input ~ 0
A3ROW
Text GLabel 15000 7600 0    60   Input ~ 0
A4ROW
Text GLabel 13700 7200 0    60   Input ~ 0
OUTROW
Text Notes 16200 1100 0    157  Italic 31
OLED
Wire Wire Line
	16800 2550 16800 2650
$Comp
L power:GND #PWR0106
U 1 1 5E1D8682
P 16800 2650
F 0 "#PWR0106" H 16800 2400 50  0001 C CNN
F 1 "GND" H 16800 2500 50  0000 C CNN
F 2 "" H 16800 2650 60  0000 C CNN
F 3 "" H 16800 2650 60  0000 C CNN
	1    16800 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5E1D868C
P 16800 2450
F 0 "R1" H 16830 2470 50  0000 L CNN
F 1 "100k" H 16830 2410 50  0001 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 16800 2450 60  0001 C CNN
F 3 "" H 16800 2450 60  0000 C CNN
F 4 "311-100KLRCT-ND" H 16800 2450 60  0001 C CNN "Digikey Part No."
	1    16800 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x07 P2
U 1 1 5E1D869A
P 17200 2000
F 0 "P2" H 17200 2400 50  0000 C CNN
F 1 "CONN_01X07" V 17300 2000 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 17200 2000 50  0001 C CNN
F 3 "" H 17200 2000 50  0000 C CNN
	1    17200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	17000 2300 16800 2300
Wire Wire Line
	16800 2300 16800 2350
Wire Wire Line
	17000 2200 16550 2200
Wire Wire Line
	16550 2200 16550 1550
$Comp
L power:+3V3 #PWR0108
U 1 1 5E1D86A4
P 16550 1550
F 0 "#PWR0108" H 16550 1400 50  0001 C CNN
F 1 "+3V3" H 16550 1690 50  0000 C CNN
F 2 "" H 16550 1550 60  0000 C CNN
F 3 "" H 16550 1550 60  0000 C CNN
	1    16550 1550
	1    0    0    -1  
$EndComp
Text GLabel 16850 2000 0    39   Input ~ 0
DATA
Text GLabel 16850 2100 0    39   Input ~ 0
CLK
Text GLabel 16850 1900 0    39   Input ~ 0
RES
Text GLabel 16850 1800 0    39   Input ~ 0
DC
Wire Wire Line
	17000 1700 16850 1700
Wire Wire Line
	17000 1800 16850 1800
Wire Wire Line
	17000 1900 16850 1900
Wire Wire Line
	17000 2000 16850 2000
Wire Wire Line
	17000 2100 16850 2100
Wire Wire Line
	10700 1500 10900 1500
$Comp
L digiobscura_mcu-rescue:LED_Small-AP2112k D1
U 1 1 5E24F1D7
P 10700 1700
F 0 "D1" V 10746 1632 50  0000 R CNN
F 1 "LED_Small" V 10655 1632 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 10700 1700 50  0001 C CNN
F 3 "" V 10700 1700 50  0001 C CNN
F 4 "1080-1403-2-ND" H 10700 1700 50  0001 C CNN "Digikey Part No."
	1    10700 1700
	0    -1   -1   0   
$EndComp
Text GLabel 5400 3650 2    39   Input ~ 0
DATA
Text GLabel 2900 3900 0    39   Input ~ 0
CLK
Text GLabel 5400 3350 2    39   Input ~ 0
RES
Text GLabel 5400 3550 2    39   Input ~ 0
DC
Text GLabel 5400 3450 2    39   Input ~ 0
CS_oled
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5E277AEC
P 10800 5500
F 0 "J1" H 10880 5492 50  0000 L CNN
F 1 "Conn_01x02" H 10880 5401 50  0000 L CNN
F 2 "Connector_JST:JST_PH_S2B-PH-K_1x02_P2.00mm_Horizontal" H 10800 5500 50  0001 C CNN
F 3 "~" H 10800 5500 50  0001 C CNN
F 4 "455-1719-ND" H 10800 5500 50  0001 C CNN "Digikey Part No."
	1    10800 5500
	1    0    0    -1  
$EndComp
Text GLabel 2900 4100 0    60   Input ~ 0
BUTTON1
$Comp
L Device:R R2
U 1 1 5E27A7BC
P 10400 5300
F 0 "R2" V 10480 5300 50  0000 C CNN
F 1 "4.7K" V 10400 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10330 5300 30  0001 C CNN
F 3 "" H 10400 5300 30  0000 C CNN
F 4 "311-4.7KARCT-ND" V 10400 5300 60  0001 C CNN "Digikey Part No."
	1    10400 5300
	1    0    0    -1  
$EndComp
Text GLabel 10250 5500 0    60   Input ~ 0
BUTTON1
$Comp
L power:GND #PWR0109
U 1 1 5E27B5F1
P 10500 5650
F 0 "#PWR0109" H 10500 5400 50  0001 C CNN
F 1 "GND" H 10500 5500 50  0000 C CNN
F 2 "" H 10500 5650 60  0000 C CNN
F 3 "" H 10500 5650 60  0000 C CNN
	1    10500 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5500 10400 5500
Wire Wire Line
	10400 5450 10400 5500
Connection ~ 10400 5500
Wire Wire Line
	10400 5500 10600 5500
Wire Wire Line
	10400 5150 10400 5050
Wire Wire Line
	10600 5600 10500 5600
Wire Wire Line
	10500 5600 10500 5650
$Comp
L power:+3.3V #PWR0111
U 1 1 5E2AB6F5
P 10400 5050
F 0 "#PWR0111" H 10400 4900 50  0001 C CNN
F 1 "+3.3V" H 10400 5190 50  0000 C CNN
F 2 "" H 10400 5050 60  0000 C CNN
F 3 "" H 10400 5050 60  0000 C CNN
	1    10400 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	11700 8050 11200 8050
$Comp
L power:GND #PWR0112
U 1 1 5E2D3115
P 14500 7500
F 0 "#PWR0112" H 14500 7250 50  0001 C CNN
F 1 "GND" H 14505 7327 50  0000 C CNN
F 2 "" H 14500 7500 50  0000 C CNN
F 3 "" H 14500 7500 50  0000 C CNN
	1    14500 7500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5E2D3536
P 11200 8350
F 0 "#PWR0113" H 11200 8100 50  0001 C CNN
F 1 "GND" H 11205 8177 50  0000 C CNN
F 2 "" H 11200 8350 50  0000 C CNN
F 3 "" H 11200 8350 50  0000 C CNN
	1    11200 8350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5E2D39CB
P 11200 8200
F 0 "R8" V 11280 8200 50  0000 C CNN
F 1 "4.7K" V 11200 8200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11130 8200 30  0001 C CNN
F 3 "" H 11200 8200 30  0000 C CNN
F 4 "311-4.7KARCT-ND" V 11200 8200 60  0001 C CNN "Digikey Part No."
	1    11200 8200
	1    0    0    -1  
$EndComp
Connection ~ 11200 8050
Wire Wire Line
	11200 8050 10950 8050
$Comp
L Device:R R4
U 1 1 5E2D533B
P 14500 7350
F 0 "R4" V 14580 7350 50  0000 C CNN
F 1 "4.7K" V 14500 7350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 14430 7350 30  0001 C CNN
F 3 "" H 14500 7350 30  0000 C CNN
F 4 "311-4.7KARCT-ND" V 14500 7350 60  0001 C CNN "Digikey Part No."
	1    14500 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	13700 7200 13800 7200
Wire Wire Line
	14500 7200 15000 7200
Connection ~ 14500 7200
Text GLabel 13100 8700 0    60   Input ~ 0
WR
Text GLabel 13300 8700 2    60   Input ~ 0
WRCOL
Text GLabel 13300 8850 2    60   Input ~ 0
WRROW
Wire Wire Line
	13100 8700 13200 8700
Wire Wire Line
	13300 8850 13200 8850
Wire Wire Line
	13200 8850 13200 8700
Connection ~ 13200 8700
Wire Wire Line
	13200 8700 13300 8700
Text GLabel 13100 9050 0    60   Input ~ 0
CS
Text GLabel 13250 9050 2    60   Input ~ 0
CSCOL
Text GLabel 13250 9200 2    60   Input ~ 0
CSROW
Wire Wire Line
	13100 9050 13150 9050
Wire Wire Line
	13250 9200 13150 9200
Wire Wire Line
	13150 9200 13150 9050
Connection ~ 13150 9050
Wire Wire Line
	13150 9050 13250 9050
Text GLabel 13100 9450 0    60   Input ~ 0
EN
Text GLabel 13250 9450 2    60   Input ~ 0
ENCOL
Text GLabel 13250 9600 2    60   Input ~ 0
ENROW
Wire Wire Line
	13100 9450 13150 9450
Wire Wire Line
	13250 9600 13150 9600
Wire Wire Line
	13150 9600 13150 9450
Connection ~ 13150 9450
Wire Wire Line
	13150 9450 13250 9450
Text GLabel 2950 3600 0    60   Input ~ 0
OUTCOL
Text GLabel 2900 3700 0    60   Input ~ 0
OUTROW
Wire Wire Line
	2900 4100 2950 4100
Text GLabel 2900 3800 0    60   Input ~ 0
A0COL
Text GLabel 2950 4000 0    60   Input ~ 0
A1COL
Text GLabel 2900 4200 0    60   Input ~ 0
A2COL
Text GLabel 2900 4300 0    60   Input ~ 0
A3COL
Text GLabel 5350 2650 2    60   Input ~ 0
A4COL
Text GLabel 5350 2750 2    60   Input ~ 0
A0ROW
Text GLabel 5350 2850 2    60   Input ~ 0
A1ROW
Text GLabel 5400 3850 2    60   Input ~ 0
A2ROW
Text GLabel 5350 3050 2    60   Input ~ 0
A3ROW
Text GLabel 5350 3150 2    60   Input ~ 0
A4ROW
Text GLabel 5350 3250 2    60   Input ~ 0
WR
Text GLabel 5400 3750 2    60   Input ~ 0
CS
Text GLabel 2950 3400 0    60   Input ~ 0
EN
$Comp
L Connector:Micro_SD_Card_Det J4
U 1 1 5D8010DC
P 11950 3500
F 0 "J4" H 11900 4317 50  0000 C CNN
F 1 "Micro_SD_Card_Det" H 11900 4226 50  0000 C CNN
F 2 "Connector_Card:microSD_HC_Hirose_DM3D-SF" H 14000 4200 50  0001 C CNN
F 3 "https://www.hirose.com/product/en/download_file/key_name/DM3/category/Catalog/doc_file_id/49662/?file_category_id=4&item_id=195&is_series=1" H 11950 3600 50  0001 C CNN
F 4 "HR1941CT-ND" H 9600 -8700 50  0001 C CNN "Digikey Part No."
	1    11950 3500
	1    0    0    -1  
$EndComp
Text GLabel 10950 3700 0    50   Input ~ 0
SD_MISO
Text GLabel 11050 3300 0    50   Input ~ 0
SD_MOSI
Text GLabel 10950 3500 0    50   Input ~ 0
SD_SCK
Text GLabel 10950 3200 0    50   Input ~ 0
SD_CS
$Comp
L power:+3V3 #PWR0114
U 1 1 5D8010E7
P 10550 3200
F 0 "#PWR0114" H 10550 3050 50  0001 C CNN
F 1 "+3V3" H 10565 3373 50  0000 C CNN
F 2 "" H 10550 3200 50  0001 C CNN
F 3 "" H 10550 3200 50  0001 C CNN
	1    10550 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 3400 10550 3400
Wire Wire Line
	10550 3400 10550 3200
Wire Wire Line
	10950 3200 11050 3200
Wire Wire Line
	10950 3500 11050 3500
Wire Wire Line
	10950 3700 11050 3700
Wire Wire Line
	11050 3600 10550 3600
Wire Wire Line
	10550 3600 10550 4000
$Comp
L power:GND #PWR0116
U 1 1 5D8010F6
P 10550 4000
F 0 "#PWR0116" H 10550 3750 50  0001 C CNN
F 1 "GND" H 10555 3827 50  0000 C CNN
F 2 "" H 10550 4000 50  0000 C CNN
F 3 "" H 10550 4000 50  0000 C CNN
	1    10550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	12750 4000 12800 4000
Wire Wire Line
	12800 4000 12800 4200
$Comp
L digiobscura_mcu-rescue:GND-AP2112k #PWR0117
U 1 1 5D8010FE
P 12800 4200
F 0 "#PWR0117" H 12800 3950 50  0001 C CNN
F 1 "GND" H 12805 4027 50  0000 C CNN
F 2 "" H 12800 4200 50  0000 C CNN
F 3 "" H 12800 4200 50  0000 C CNN
	1    12800 4200
	1    0    0    -1  
$EndComp
Text GLabel 5350 2950 2    50   Input ~ 0
SD_MISO
Text GLabel 5100 4850 2    50   Input ~ 0
SD_MOSI
Text GLabel 5100 4950 2    50   Input ~ 0
SD_SCK
Text GLabel 5400 4050 2    50   Input ~ 0
SD_CS
$Comp
L Device:C_Small C7
U 1 1 5D7F4C0C
P 10950 8150
F 0 "C7" H 10850 8250 50  0000 L CNN
F 1 "1uF" H 10960 8070 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10950 8150 60  0001 C CNN
F 3 "" H 10950 8150 60  0000 C CNN
F 4 "1276-3010-1-ND" H 10950 8150 60  0001 C CNN "Digikey Part No."
	1    10950 8150
	1    0    0    -1  
$EndComp
Connection ~ 10950 8050
$Comp
L power:GND #PWR0118
U 1 1 5D7F5922
P 10950 8250
F 0 "#PWR0118" H 10950 8000 50  0001 C CNN
F 1 "GND" H 10955 8077 50  0000 C CNN
F 2 "" H 10950 8250 50  0000 C CNN
F 3 "" H 10950 8250 50  0000 C CNN
	1    10950 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5D7F5CCB
P 14200 7300
F 0 "C6" H 14100 7400 50  0000 L CNN
F 1 "1uF" H 14210 7220 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 14200 7300 60  0001 C CNN
F 3 "" H 14200 7300 60  0000 C CNN
F 4 "1276-3010-1-ND" H 14200 7300 60  0001 C CNN "Digikey Part No."
	1    14200 7300
	1    0    0    -1  
$EndComp
Connection ~ 14200 7200
Wire Wire Line
	14200 7200 14500 7200
$Comp
L power:GND #PWR0119
U 1 1 5D801ADB
P 14200 7400
F 0 "#PWR0119" H 14200 7150 50  0001 C CNN
F 1 "GND" H 14205 7227 50  0000 C CNN
F 2 "" H 14200 7400 50  0000 C CNN
F 3 "" H 14200 7400 50  0000 C CNN
	1    14200 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5D84B3DF
P 13800 7350
F 0 "RV1" V 13685 7350 50  0000 C CNN
F 1 "R_POT" V 13594 7350 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_PTV09A-1_Single_Vertical" H 13800 7350 50  0001 C CNN
F 3 "~" H 13800 7350 50  0001 C CNN
F 4 "987-1276-ND" H 13800 7350 50  0001 C CNN "Digikey Part No."
	1    13800 7350
	0    -1   -1   0   
$EndComp
Connection ~ 13800 7200
Wire Wire Line
	13800 7200 14200 7200
$Comp
L power:GND #PWR0121
U 1 1 5D84C2FF
P 14000 7750
F 0 "#PWR0121" H 14000 7500 50  0001 C CNN
F 1 "GND" H 14005 7577 50  0000 C CNN
F 2 "" H 14000 7750 50  0000 C CNN
F 3 "" H 14000 7750 50  0000 C CNN
	1    14000 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	13950 7350 14000 7350
Wire Wire Line
	14000 7350 14000 7450
$Comp
L power:+3V3 #PWR0122
U 1 1 5D861707
P 13350 7350
F 0 "#PWR0122" H 13350 7200 50  0001 C CNN
F 1 "+3V3" H 13365 7523 50  0000 C CNN
F 2 "" H 13350 7350 50  0000 C CNN
F 3 "" H 13350 7350 50  0000 C CNN
	1    13350 7350
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5D862A84
P 13500 7350
F 0 "JP1" H 13500 7555 50  0000 C CNN
F 1 "jmp2" H 13250 7200 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 13500 7350 50  0001 C CNN
F 3 "~" H 13500 7350 50  0001 C CNN
	1    13500 7350
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 5D8765EF
P 14000 7600
F 0 "JP3" H 14100 7700 50  0000 C CNN
F 1 "jmp3" H 14150 7500 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 14000 7600 50  0001 C CNN
F 3 "~" H 14000 7600 50  0001 C CNN
	1    14000 7600
	0    1    1    0   
$EndComp
$Comp
L power:VCOM #PWR0124
U 1 1 5D8952CE
P 2650 9700
F 0 "#PWR0124" H 2650 9550 50  0001 C CNN
F 1 "VCOM" H 2667 9873 50  0000 C CNN
F 2 "" H 2650 9700 50  0001 C CNN
F 3 "" H 2650 9700 50  0001 C CNN
	1    2650 9700
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 5D8C01D7
P 3350 7750
F 0 "D3" H 3200 7800 50  0000 C CNN
F 1 "MBR230L" H 3350 7650 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 3350 7750 60  0001 C CNN
F 3 "" H 3350 7750 60  0000 C CNN
F 4 "MBR230LSFT1GOSCT-ND" H 3350 7750 60  0001 C CNN "Digikey Part No."
	1    3350 7750
	-1   0    0    1   
$EndComp
$Comp
L power:VCOM #PWR0125
U 1 1 5D8CF20A
P 2500 11550
F 0 "#PWR0125" H 2500 11400 50  0001 C CNN
F 1 "VCOM" H 2517 11723 50  0000 C CNN
F 2 "" H 2500 11550 50  0001 C CNN
F 3 "" H 2500 11550 50  0001 C CNN
	1    2500 11550
	1    0    0    -1  
$EndComp
Text GLabel 3200 7750 0    60   Input ~ 0
VBATT
Text GLabel 16850 1700 0    39   Input ~ 0
CS_oled
$Comp
L Connector_Generic:Conn_01x11 J2
U 1 1 5E1A7149
P 15200 7600
F 0 "J2" H 15279 7642 50  0000 L CNN
F 1 "ROW" H 15279 7551 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x11_P2.54mm_Vertical" H 15200 7600 50  0001 C CNN
F 3 "~" H 15200 7600 50  0001 C CNN
F 4 "S7044-ND" H 15200 7600 50  0001 C CNN "Digikey Part No."
	1    15200 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 8050 4200 7900
Text GLabel 4200 8050 0    60   Input ~ 0
PEN
Wire Wire Line
	3750 7750 3950 7750
$Comp
L Switch:SW_Push_SPDT SW1
U 1 1 5E02CCB2
P 1650 7900
F 0 "SW1" H 1650 8185 50  0000 C CNN
F 1 "SW_Push_SPDT" H 1650 8094 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Slide_1P2T_CK_OS102011MS2Q" H 1650 7900 50  0001 C CNN
F 3 "~" H 1650 7900 50  0001 C CNN
F 4 "CKN9542-ND" H 1650 7900 50  0001 C CNN "Digikey Part No."
	1    1650 7900
	1    0    0    -1  
$EndComp
Text GLabel 3950 7600 1    60   Input ~ 0
ON
Wire Wire Line
	3950 7750 3950 7600
Connection ~ 3950 7750
Wire Wire Line
	3950 7750 4200 7750
$Comp
L power:GND #PWR0126
U 1 1 5E03898A
P 1900 8100
F 0 "#PWR0126" H 1900 7850 50  0001 C CNN
F 1 "GND" H 1900 7950 50  0000 C CNN
F 2 "" H 1900 8100 60  0000 C CNN
F 3 "" H 1900 8100 60  0000 C CNN
	1    1900 8100
	1    0    0    -1  
$EndComp
Text GLabel 2000 7800 2    60   Input ~ 0
ON
Text GLabel 1350 7900 0    60   Input ~ 0
PEN
Wire Wire Line
	1350 7900 1450 7900
Wire Wire Line
	1850 7800 2000 7800
Wire Wire Line
	1850 8000 1900 8000
Wire Wire Line
	1900 8000 1900 8100
Wire Wire Line
	10400 8050 10950 8050
Text GLabel 12350 5550 0    60   Input ~ 0
BUTTON2
$Comp
L Device:R R5
U 1 1 5E0AB375
P 12450 5350
F 0 "R5" V 12530 5350 50  0000 C CNN
F 1 "10K" V 12450 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 12380 5350 30  0001 C CNN
F 3 "" H 12450 5350 30  0000 C CNN
F 4 "311-4.7KARCT-ND" V 12450 5350 60  0001 C CNN "Digikey Part No."
	1    12450 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 5E0ABC8D
P 12450 5150
F 0 "#PWR0107" H 12450 5000 50  0001 C CNN
F 1 "+3.3V" H 12450 5290 50  0000 C CNN
F 2 "" H 12450 5150 60  0000 C CNN
F 3 "" H 12450 5150 60  0000 C CNN
	1    12450 5150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5E0AE26E
P 12800 5550
F 0 "SW2" H 12800 5835 50  0000 C CNN
F 1 "SW_Push" H 12800 5744 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_EVPBF" H 12800 5750 50  0001 C CNN
F 3 "~" H 12800 5750 50  0001 C CNN
F 4 "P12961SCT-ND" H 12800 5550 50  0001 C CNN "Digikey Part No."
	1    12800 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	12350 5550 12450 5550
Wire Wire Line
	12450 5500 12450 5550
Connection ~ 12450 5550
Wire Wire Line
	12450 5550 12600 5550
Wire Wire Line
	13000 5550 13000 5650
$Comp
L power:GND #PWR0120
U 1 1 5E0CF561
P 13000 5650
F 0 "#PWR0120" H 13000 5400 50  0001 C CNN
F 1 "GND" H 13000 5500 50  0000 C CNN
F 2 "" H 13000 5650 60  0000 C CNN
F 3 "" H 13000 5650 60  0000 C CNN
	1    13000 5650
	1    0    0    -1  
$EndComp
Text GLabel 5400 3950 2    60   Input ~ 0
BUTTON2
Wire Wire Line
	12450 5200 12450 5150
$EndSCHEMATC
