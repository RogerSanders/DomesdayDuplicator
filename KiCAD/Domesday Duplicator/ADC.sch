EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ads825
LIBS:de0-nano_gpio
LIBS:opa690
LIBS:gpifii_j7
LIBS:gpifii_j6
LIBS:Domesday Duplicator-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "Domesday Duplicator"
Date "2017-11-07"
Rev "1.5"
Comp "http://www.domesday86.com"
Comment1 "(c)2017 Simon Inns"
Comment2 "License: Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ADS825 U2
U 1 1 59D1E3B9
P 6550 3200
F 0 "U2" H 5950 2350 60  0000 C CNN
F 1 "ADS825" H 6050 3950 60  0000 C CNN
F 2 "Housings_SSOP:SSOP-28_5.3x10.2mm_Pitch0.65mm" H 6550 3200 60  0001 C CNN
F 3 "" H 6550 3200 60  0001 C CNN
	1    6550 3200
	1    0    0    -1  
$EndComp
Text HLabel 10500 1500 2    60   Output ~ 0
DATA0
Text HLabel 10500 1600 2    60   Output ~ 0
DATA1
Text HLabel 10500 1700 2    60   Output ~ 0
DATA2
Text HLabel 10500 1800 2    60   Output ~ 0
DATA3
Text HLabel 10500 1900 2    60   Output ~ 0
DATA4
Text HLabel 10500 2000 2    60   Output ~ 0
DATA5
Text HLabel 10500 2100 2    60   Output ~ 0
DATA6
Text HLabel 10500 2200 2    60   Output ~ 0
DATA7
Text HLabel 10500 3550 2    60   Output ~ 0
DATA8
Text HLabel 10500 3650 2    60   Output ~ 0
DATA9
Text HLabel 7800 3900 2    60   Input ~ 0
CLK
Text HLabel 5300 2600 0    60   Input ~ 0
IN
Text HLabel 2400 3000 0    60   Output ~ 0
REFT
Text HLabel 2400 3100 0    60   Output ~ 0
REFB
Wire Wire Line
	5300 2600 5700 2600
Wire Wire Line
	2400 3000 5700 3000
Wire Wire Line
	2400 3100 5700 3100
Wire Wire Line
	6500 2300 6500 2200
Wire Wire Line
	5450 2200 6600 2200
Connection ~ 6600 2200
$Comp
L GND #PWR07
U 1 1 59D20208
P 6450 4350
F 0 "#PWR07" H 6450 4100 50  0001 C CNN
F 1 "GND" H 6450 4200 50  0000 C CNN
F 2 "" H 6450 4350 50  0001 C CNN
F 3 "" H 6450 4350 50  0001 C CNN
	1    6450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4200 6450 4350
Wire Wire Line
	6650 4250 6650 4200
Wire Wire Line
	7500 4250 850  4250
Connection ~ 6450 4250
Wire Wire Line
	6550 4200 6550 4250
Connection ~ 6550 4250
Wire Wire Line
	7400 3700 7500 3700
Wire Wire Line
	7500 3700 7500 4250
Connection ~ 6650 4250
Wire Wire Line
	7400 3800 7500 3800
Connection ~ 7500 3800
Wire Wire Line
	5700 3600 5550 3600
Wire Wire Line
	5550 3600 5550 4250
Wire Wire Line
	5700 3700 5450 3700
Wire Wire Line
	5450 3700 5450 2200
Connection ~ 6500 2200
Wire Wire Line
	6600 2050 6600 2300
Wire Wire Line
	6350 2050 6350 2300
$Comp
L C C10
U 1 1 59D2039F
P 2900 3750
F 0 "C10" H 2925 3850 50  0000 L CNN
F 1 "100nF" H 2925 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2938 3600 50  0001 C CNN
F 3 "" H 2900 3750 50  0001 C CNN
	1    2900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2700 2900 3600
Connection ~ 5550 4250
$Comp
L C C19
U 1 1 59D204E6
P 3750 3750
F 0 "C19" H 3775 3850 50  0000 L CNN
F 1 "100nF" H 3775 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3788 3600 50  0001 C CNN
F 3 "" H 3750 3750 50  0001 C CNN
	1    3750 3750
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 59D20637
P 850 3750
F 0 "C1" H 875 3850 50  0000 L CNN
F 1 "100nF" H 875 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 888 3600 50  0001 C CNN
F 3 "" H 850 3750 50  0001 C CNN
	1    850  3750
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 59D20660
P 1750 3750
F 0 "C6" H 1775 3850 50  0000 L CNN
F 1 "100nF" H 1775 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1788 3600 50  0001 C CNN
F 3 "" H 1750 3750 50  0001 C CNN
	1    1750 3750
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 59D2068E
P 1150 3750
F 0 "C2" H 1175 3850 50  0000 L CNN
F 1 "2.2uF Tant" H 1175 3650 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 1188 3600 50  0001 C CNN
F 3 "" H 1150 3750 50  0001 C CNN
	1    1150 3750
	1    0    0    -1  
$EndComp
$Comp
L CP C9
U 1 1 59D206C2
P 2050 3750
F 0 "C9" H 2075 3850 50  0000 L CNN
F 1 "2.2uF Tant" H 2075 3650 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 2088 3600 50  0001 C CNN
F 3 "" H 2050 3750 50  0001 C CNN
	1    2050 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  3300 5700 3300
Wire Wire Line
	850  3300 850  3600
Wire Wire Line
	1750 3400 5700 3400
Wire Wire Line
	1750 3400 1750 3600
Wire Wire Line
	1150 3600 1150 3300
Connection ~ 1150 3300
Wire Wire Line
	2050 3600 2050 3400
Connection ~ 2050 3400
Wire Wire Line
	850  4250 850  3900
Wire Wire Line
	1150 3900 1150 4250
Connection ~ 1150 4250
Wire Wire Line
	1750 3900 1750 4250
Connection ~ 1750 4250
Wire Wire Line
	2050 3900 2050 4250
Connection ~ 2050 4250
$Comp
L LM1117-3.3 U1
U 1 1 59D20D80
P 2350 1200
F 0 "U1" H 2450 950 50  0000 C CNN
F 1 "LM1117-3.3" H 2350 1450 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 2350 1200 50  0001 C CNN
F 3 "" H 2350 1200 50  0001 C CNN
	1    2350 1200
	1    0    0    -1  
$EndComp
$Comp
L CP C4
U 1 1 59D20DDA
P 1600 1450
F 0 "C4" H 1625 1550 50  0000 L CNN
F 1 "10uF" H 1625 1350 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.7" H 1638 1300 50  0001 C CNN
F 3 "" H 1600 1450 50  0001 C CNN
	1    1600 1450
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 59D20E77
P 1850 1450
F 0 "C7" H 1875 1550 50  0000 L CNN
F 1 "100nF" H 1875 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1888 1300 50  0001 C CNN
F 3 "" H 1850 1450 50  0001 C CNN
	1    1850 1450
	1    0    0    -1  
$EndComp
$Comp
L CP C12
U 1 1 59D21089
P 2850 1450
F 0 "C12" H 2875 1550 50  0000 L CNN
F 1 "10uF" H 2875 1350 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.7" H 2888 1300 50  0001 C CNN
F 3 "" H 2850 1450 50  0001 C CNN
	1    2850 1450
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 59D2108F
P 3100 1450
F 0 "C15" H 3125 1550 50  0000 L CNN
F 1 "100nF" H 3125 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3138 1300 50  0001 C CNN
F 3 "" H 3100 1450 50  0001 C CNN
	1    3100 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 59D210E5
P 2350 1800
F 0 "#PWR08" H 2350 1550 50  0001 C CNN
F 1 "GND" H 2350 1650 50  0000 C CNN
F 2 "" H 2350 1800 50  0001 C CNN
F 3 "" H 2350 1800 50  0001 C CNN
	1    2350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1600 1600 1700
Wire Wire Line
	1600 1700 3100 1700
Wire Wire Line
	3100 1700 3100 1600
Wire Wire Line
	2850 1600 2850 1700
Connection ~ 2850 1700
Wire Wire Line
	1850 1600 1850 1700
Connection ~ 1850 1700
Wire Wire Line
	2350 1500 2350 1800
Connection ~ 2350 1700
Wire Wire Line
	1600 1100 1600 1300
Wire Wire Line
	1300 1200 2050 1200
Wire Wire Line
	2650 1200 3100 1200
Wire Wire Line
	3100 1100 3100 1300
Wire Wire Line
	2850 1300 2850 1200
Connection ~ 2850 1200
Wire Wire Line
	1850 1300 1850 1200
Connection ~ 1850 1200
Connection ~ 3100 1200
Connection ~ 1600 1200
$Comp
L +5VA #PWR09
U 1 1 59D21529
P 1600 1100
F 0 "#PWR09" H 1600 950 50  0001 C CNN
F 1 "+5VA" H 1600 1240 50  0000 C CNN
F 2 "" H 1600 1100 50  0001 C CNN
F 3 "" H 1600 1100 50  0001 C CNN
	1    1600 1100
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR010
U 1 1 59D21562
P 6600 2050
F 0 "#PWR010" H 6600 1900 50  0001 C CNN
F 1 "+5VA" H 6600 2190 50  0000 C CNN
F 2 "" H 6600 2050 50  0001 C CNN
F 3 "" H 6600 2050 50  0001 C CNN
	1    6600 2050
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 59D21589
P 1150 1200
F 0 "L1" V 1100 1200 50  0000 C CNN
F 1 "100uH" V 1225 1200 50  0000 C CNN
F 2 "Inductors_THT:L_Radial_D9.5mm_P5.00mm_Fastron_07HVP" H 1150 1200 50  0001 C CNN
F 3 "" H 1150 1200 50  0001 C CNN
	1    1150 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 1200 850  1200
Wire Wire Line
	850  1200 850  1100
$Comp
L +5V #PWR011
U 1 1 59D216C2
P 850 1100
F 0 "#PWR011" H 850 950 50  0001 C CNN
F 1 "+5V" H 850 1240 50  0000 C CNN
F 2 "" H 850 1100 50  0001 C CNN
F 3 "" H 850 1100 50  0001 C CNN
	1    850  1100
	1    0    0    -1  
$EndComp
$Comp
L +3.3VA #PWR012
U 1 1 59D22575
P 6350 2050
F 0 "#PWR012" H 6350 1900 50  0001 C CNN
F 1 "+3.3VA" H 6350 2190 50  0000 C CNN
F 2 "" H 6350 2050 50  0001 C CNN
F 3 "" H 6350 2050 50  0001 C CNN
	1    6350 2050
	1    0    0    -1  
$EndComp
$Comp
L +3.3VA #PWR013
U 1 1 59D23B11
P 3100 1100
F 0 "#PWR013" H 3100 950 50  0001 C CNN
F 1 "+3.3VA" H 3100 1240 50  0000 C CNN
F 2 "" H 3100 1100 50  0001 C CNN
F 3 "" H 3100 1100 50  0001 C CNN
	1    3100 1100
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59D254D7
P 1300 6850
F 0 "C3" H 1325 6950 50  0000 L CNN
F 1 "100nF" H 1325 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1338 6700 50  0001 C CNN
F 3 "" H 1300 6850 50  0001 C CNN
	1    1300 6850
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 59D2553A
P 1600 6850
F 0 "C5" H 1625 6950 50  0000 L CNN
F 1 "100nF" H 1625 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1638 6700 50  0001 C CNN
F 3 "" H 1600 6850 50  0001 C CNN
	1    1600 6850
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 59D25584
P 2600 6850
F 0 "C11" H 2625 6950 50  0000 L CNN
F 1 "100nF" H 2625 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2638 6700 50  0001 C CNN
F 3 "" H 2600 6850 50  0001 C CNN
	1    2600 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 59D255CD
P 1300 7200
F 0 "#PWR014" H 1300 6950 50  0001 C CNN
F 1 "GND" H 1300 7050 50  0000 C CNN
F 2 "" H 1300 7200 50  0001 C CNN
F 3 "" H 1300 7200 50  0001 C CNN
	1    1300 7200
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR015
U 1 1 59D2560B
P 1300 6500
F 0 "#PWR015" H 1300 6350 50  0001 C CNN
F 1 "+5VA" H 1300 6640 50  0000 C CNN
F 2 "" H 1300 6500 50  0001 C CNN
F 3 "" H 1300 6500 50  0001 C CNN
	1    1300 6500
	1    0    0    -1  
$EndComp
$Comp
L +3.3VA #PWR016
U 1 1 59D25649
P 2600 6500
F 0 "#PWR016" H 2600 6350 50  0001 C CNN
F 1 "+3.3VA" H 2600 6640 50  0000 C CNN
F 2 "" H 2600 6500 50  0001 C CNN
F 3 "" H 2600 6500 50  0001 C CNN
	1    2600 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6500 1300 6700
Wire Wire Line
	1300 7000 1300 7200
Wire Wire Line
	2600 7100 2600 7000
Wire Wire Line
	1300 7100 3550 7100
Connection ~ 1300 7100
Wire Wire Line
	1600 6700 1600 6600
Wire Wire Line
	1300 6600 1950 6600
Connection ~ 1300 6600
Wire Wire Line
	2600 6500 2600 6700
Wire Wire Line
	1600 7000 1600 7100
Connection ~ 1600 7100
$Comp
L 74HCT541_PWR U3
U 1 1 59FACBAF
P 9650 2000
F 0 "U3" H 9750 2650 50  0000 L CNN
F 1 "74LVTH541_PWR" H 9700 1350 50  0000 L CNN
F 2 "Housings_SSOP:TSSOP-20_4.4x6.5mm_Pitch0.65mm" H 9650 2000 50  0001 C CNN
F 3 "" H 9650 2000 50  0001 C CNN
	1    9650 2000
	1    0    0    -1  
$EndComp
$Comp
L 74HCT541_PWR U4
U 1 1 59FACC63
P 9650 4050
F 0 "U4" H 9750 4700 50  0000 L CNN
F 1 "74LVTH541_PWR" H 9700 3400 50  0000 L CNN
F 2 "Housings_SSOP:TSSOP-20_4.4x6.5mm_Pitch0.65mm" H 9650 4050 50  0001 C CNN
F 3 "" H 9650 4050 50  0001 C CNN
	1    9650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2600 7700 2600
Wire Wire Line
	7700 2600 7700 1500
Wire Wire Line
	7700 1500 8950 1500
Wire Wire Line
	7400 2700 7800 2700
Wire Wire Line
	7800 2700 7800 1600
Wire Wire Line
	7800 1600 8950 1600
Wire Wire Line
	7400 2800 7900 2800
Wire Wire Line
	7900 2800 7900 1700
Wire Wire Line
	7900 1700 8950 1700
Wire Wire Line
	7400 2900 8000 2900
Wire Wire Line
	8000 2900 8000 1800
Wire Wire Line
	8000 1800 8950 1800
Wire Wire Line
	7400 3000 8100 3000
Wire Wire Line
	8100 3000 8100 1900
Wire Wire Line
	8100 1900 8950 1900
Wire Wire Line
	7400 3100 8200 3100
Wire Wire Line
	8200 3100 8200 2000
Wire Wire Line
	8200 2000 8950 2000
Wire Wire Line
	7400 3200 8300 3200
Wire Wire Line
	8300 3200 8300 2100
Wire Wire Line
	8300 2100 8950 2100
Wire Wire Line
	7400 3300 8400 3300
Wire Wire Line
	8400 3300 8400 2200
Wire Wire Line
	8400 2200 8950 2200
Wire Wire Line
	7400 3400 8400 3400
Wire Wire Line
	8400 3400 8400 3550
Wire Wire Line
	8400 3550 8950 3550
Wire Wire Line
	7400 3500 8300 3500
Wire Wire Line
	8300 3500 8300 3650
Wire Wire Line
	8300 3650 8950 3650
Wire Wire Line
	8950 2400 8850 2400
Wire Wire Line
	8850 2400 8850 4850
Wire Wire Line
	8850 4550 8950 4550
Wire Wire Line
	8950 4450 8850 4450
Connection ~ 8850 4450
Wire Wire Line
	8950 2500 8850 2500
Connection ~ 8850 2500
Wire Wire Line
	10350 1500 10500 1500
Wire Wire Line
	10350 1600 10500 1600
Wire Wire Line
	10350 1700 10500 1700
Wire Wire Line
	10350 1800 10500 1800
Wire Wire Line
	10350 1900 10500 1900
Wire Wire Line
	10350 2000 10500 2000
Wire Wire Line
	10350 2100 10500 2100
Wire Wire Line
	10350 2200 10500 2200
Wire Wire Line
	10350 3550 10500 3550
Wire Wire Line
	10350 3650 10500 3650
$Comp
L +3.3VA #PWR017
U 1 1 59FAF37C
P 9650 1200
F 0 "#PWR017" H 9650 1050 50  0001 C CNN
F 1 "+3.3VA" H 9650 1340 50  0000 C CNN
F 2 "" H 9650 1200 50  0001 C CNN
F 3 "" H 9650 1200 50  0001 C CNN
	1    9650 1200
	1    0    0    -1  
$EndComp
$Comp
L +3.3VA #PWR018
U 1 1 59FAF3C0
P 9650 3250
F 0 "#PWR018" H 9650 3100 50  0001 C CNN
F 1 "+3.3VA" H 9650 3390 50  0000 C CNN
F 2 "" H 9650 3250 50  0001 C CNN
F 3 "" H 9650 3250 50  0001 C CNN
	1    9650 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 59FAF404
P 9650 5100
F 0 "#PWR019" H 9650 4850 50  0001 C CNN
F 1 "GND" H 9650 4950 50  0000 C CNN
F 2 "" H 9650 5100 50  0001 C CNN
F 3 "" H 9650 5100 50  0001 C CNN
	1    9650 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 59FAF448
P 9650 2800
F 0 "#PWR020" H 9650 2550 50  0001 C CNN
F 1 "GND" H 9650 2650 50  0000 C CNN
F 2 "" H 9650 2800 50  0001 C CNN
F 3 "" H 9650 2800 50  0001 C CNN
	1    9650 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 1250 9650 1200
Wire Wire Line
	9650 2750 9650 2800
Wire Wire Line
	9650 3250 9650 3300
Wire Wire Line
	9650 4800 9650 5100
$Comp
L C C14
U 1 1 59FB07A0
P 2900 6850
F 0 "C14" H 2925 6950 50  0000 L CNN
F 1 "100nF" H 2925 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2938 6700 50  0001 C CNN
F 3 "" H 2900 6850 50  0001 C CNN
	1    2900 6850
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 59FB07F6
P 3200 6850
F 0 "C17" H 3225 6950 50  0000 L CNN
F 1 "100nF" H 3225 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3238 6700 50  0001 C CNN
F 3 "" H 3200 6850 50  0001 C CNN
	1    3200 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7100 3200 7000
Connection ~ 2600 7100
Wire Wire Line
	3200 6600 3200 6700
Wire Wire Line
	2600 6600 3550 6600
Connection ~ 2600 6600
Wire Wire Line
	2900 6700 2900 6600
Connection ~ 2900 6600
Wire Wire Line
	2900 7000 2900 7100
Connection ~ 2900 7100
NoConn ~ 8950 3750
NoConn ~ 8950 3850
NoConn ~ 8950 3950
NoConn ~ 8950 4050
NoConn ~ 8950 4150
NoConn ~ 10350 4150
NoConn ~ 10350 4050
NoConn ~ 10350 3950
NoConn ~ 10350 3850
NoConn ~ 10350 3750
Wire Wire Line
	8850 4850 9650 4850
Connection ~ 9650 4850
Connection ~ 8850 4550
Wire Wire Line
	2900 3900 2900 4250
Connection ~ 2900 4250
Wire Wire Line
	2900 2700 5700 2700
$Comp
L CP C16
U 1 1 59FB4859
P 3200 3750
F 0 "C16" H 3225 3850 50  0000 L CNN
F 1 "2.2uF Tant" H 3225 3650 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 3238 3600 50  0001 C CNN
F 3 "" H 3200 3750 50  0001 C CNN
	1    3200 3750
	1    0    0    -1  
$EndComp
$Comp
L CP C20
U 1 1 59FB495D
P 4050 3750
F 0 "C20" H 4075 3850 50  0000 L CNN
F 1 "2.2uF Tant" H 4075 3650 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 4088 3600 50  0001 C CNN
F 3 "" H 4050 3750 50  0001 C CNN
	1    4050 3750
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 59FB49CA
P 4600 3750
F 0 "C21" H 4625 3850 50  0000 L CNN
F 1 "100nF" H 4625 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4638 3600 50  0001 C CNN
F 3 "" H 4600 3750 50  0001 C CNN
	1    4600 3750
	1    0    0    -1  
$EndComp
$Comp
L CP C22
U 1 1 59FB4A44
P 4900 3750
F 0 "C22" H 4925 3850 50  0000 L CNN
F 1 "2.2uF Tant" H 4925 3650 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 4938 3600 50  0001 C CNN
F 3 "" H 4900 3750 50  0001 C CNN
	1    4900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3900 3200 4250
Connection ~ 3200 4250
Wire Wire Line
	3750 3600 3750 3000
Connection ~ 3750 3000
Wire Wire Line
	4050 3600 4050 3000
Connection ~ 4050 3000
Wire Wire Line
	4600 3600 4600 3100
Connection ~ 4600 3100
Wire Wire Line
	4900 3600 4900 3100
Connection ~ 4900 3100
Wire Wire Line
	3750 3900 3750 4250
Connection ~ 3750 4250
Wire Wire Line
	4050 3900 4050 4250
Connection ~ 4050 4250
Wire Wire Line
	4600 3900 4600 4250
Connection ~ 4600 4250
Wire Wire Line
	4900 3900 4900 4250
Connection ~ 4900 4250
$Comp
L CP C8
U 1 1 59FB568E
P 1950 6850
F 0 "C8" H 1975 6950 50  0000 L CNN
F 1 "2.2uF Tant" H 1975 6750 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 1988 6700 50  0001 C CNN
F 3 "" H 1950 6850 50  0001 C CNN
	1    1950 6850
	1    0    0    -1  
$EndComp
$Comp
L CP C18
U 1 1 59FB5740
P 3550 6850
F 0 "C18" H 3575 6950 50  0000 L CNN
F 1 "2.2uF Tant" H 3575 6750 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 3588 6700 50  0001 C CNN
F 3 "" H 3550 6850 50  0001 C CNN
	1    3550 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6600 1950 6700
Connection ~ 1600 6600
Wire Wire Line
	1950 7000 1950 7100
Connection ~ 1950 7100
Wire Wire Line
	3550 6600 3550 6700
Connection ~ 3200 6600
Wire Wire Line
	3550 7100 3550 7000
Connection ~ 3200 7100
Wire Wire Line
	7400 3900 7800 3900
NoConn ~ 8950 4250
NoConn ~ 10350 4250
Wire Wire Line
	3200 3600 3200 2700
Connection ~ 3200 2700
Wire Wire Line
	5700 2800 5550 2800
Wire Wire Line
	5550 2800 5550 2700
Connection ~ 5550 2700
$EndSCHEMATC
