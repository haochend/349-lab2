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
LIBS:labio-special
LIBS:wise_logo
LIBS:cmu_logo
LIBS:labio-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 10
Title "Raspberry Pi Embedded Lab I/O"
Date ""
Rev "1.2.0"
Comp "Carnegie Mellon University"
Comment1 ""
Comment2 "Drawn by: Ian Hartwig"
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1100 1000 1400 6100
U 572692EE
F0 "labio-rpi" 60
F1 "labio-rpi.sch" 60
F2 "3V3_1" I R 2500 1200 60 
F3 "GPIO4" I R 2500 6400 60 
F4 "GPIO27" I R 2500 6600 60 
F5 "GPIO22" I R 2500 6800 60 
F6 "GPIO10_SPI0_MOSI" I R 2500 4300 60 
F7 "GPIO9_SPI0_MISO" I R 2500 4200 60 
F8 "3V3_2" I R 2500 1300 60 
F9 "GPIO11_SPI0_SCLK" I R 2500 4400 60 
F10 "GPIO5" I R 2500 3700 60 
F11 "GPIO6" I R 2500 5000 60 
F12 "GPIO26" I R 2500 5500 60 
F13 "VBUS" I R 2500 1100 60 
F14 "GPIO14_TXD" I R 2500 1700 60 
F15 "GPIO15_RXD" I R 2500 1800 60 
F16 "GPIO23" I R 2500 5400 60 
F17 "GPIO24" I R 2500 6500 60 
F18 "GPIO25" I R 2500 6700 60 
F19 "GPIO8_SPI0_CE0_N" I R 2500 4500 60 
F20 "GPIO7_SPI0_CE1_N" I R 2500 5100 60 
F21 "GPIO1_SDA1" I R 2500 2200 60 
F22 "GPIO3_SCL1" I R 2500 2300 60 
F23 "GPIO17" I R 2500 5300 60 
F24 "GPIO13_PWM1" I R 2500 3500 60 
F25 "GPIO19_PCM_FS" I R 2500 2900 60 
F26 "GPIO18_PCM_CLK" I R 2500 2800 60 
F27 "GPIO12_PWM0" I R 2500 3400 60 
F28 "GPIO16" I R 2500 5200 60 
F29 "GPIO20_PCM_DIN" I R 2500 3000 60 
F30 "GPIO21_PCM_DOUT" I R 2500 3100 60 
F31 "3V3_EXTRA" I R 2500 1400 60 
$EndSheet
$Sheet
S 3700 1000 1400 1300
U 57483B82
F0 "labio-adc" 60
F1 "labio-adc.sch" 60
F2 "SDA" I L 3700 1400 60 
F3 "SCL" I L 3700 1500 60 
F4 "ALERT" I L 3700 1600 60 
F5 "VDD5V" I L 3700 1100 60 
F6 "VDD3V3" I L 3700 1200 60 
$EndSheet
$Sheet
S 3700 3400 1400 1300
U 57483FA2
F0 "labio-display" 60
F1 "labio-display.sch" 60
F2 "VDD_3V3" I L 3700 3500 60 
F3 "~CS" I L 3700 4000 60 
F4 "SCK" I L 3700 3900 60 
F5 "MOSI" I L 3700 3800 60 
F6 "DC" I L 3700 4100 60 
F7 "~RES_ALT" I L 3700 4200 60 
$EndSheet
$Sheet
S 8300 1000 1400 1300
U 57484053
F0 "labio-imu" 60
F1 "labio-imu.sch" 60
F2 "VDD3V3" I L 8300 1100 60 
F3 "SCL" I L 8300 1500 60 
F4 "SDA" I L 8300 1400 60 
F5 "INT" I L 8300 1600 60 
$EndSheet
$Sheet
S 8300 3100 1400 2500
U 57484262
F0 "labio-dio" 60
F1 "labio-dio.sch" 60
F2 "VDD_3V3" I L 8300 3300 60 
F3 "PWM0" I L 8300 3600 60 
F4 "PWM1" I L 8300 3700 60 
F5 "MOTOR_IN4" I L 8300 4200 60 
F6 "MOTOR_IN2" I L 8300 4000 60 
F7 "MOTOR_IN3" I L 8300 4100 60 
F8 "MOTOR_IN1" I L 8300 3900 60 
F9 "VDD_5V" I L 8300 3200 60 
F10 "ENC1_A" I L 8300 5300 60 
F11 "ENC1_B" I L 8300 5400 60 
F12 "ENC1_IDX" I L 8300 5500 60 
F13 "ENC0_A" I L 8300 5000 60 
F14 "ENC0_B" I L 8300 5100 60 
F15 "ENC0_IDX" I L 8300 5200 60 
F16 "VS_MOTOR" I R 9700 3500 60 
$EndSheet
Wire Wire Line
	2500 5500 8300 5500
Wire Wire Line
	2500 5400 8300 5400
Wire Wire Line
	2500 5300 8300 5300
Wire Wire Line
	2500 5200 8300 5200
Wire Wire Line
	2500 5100 8300 5100
Wire Wire Line
	2500 5000 8300 5000
Wire Wire Line
	2500 1400 3100 1400
Wire Wire Line
	7800 1100 8300 1100
Wire Wire Line
	2500 2200 3000 2200
Wire Wire Line
	3000 2200 3000 2500
Wire Wire Line
	3000 2500 7900 2500
Wire Wire Line
	5300 2500 5300 1400
Wire Wire Line
	5300 1400 6000 1400
Wire Wire Line
	7900 2500 7900 1400
Wire Wire Line
	7900 1400 8300 1400
Connection ~ 5300 2500
Wire Wire Line
	2500 2300 2900 2300
Wire Wire Line
	2900 2300 2900 2600
Wire Wire Line
	2900 2600 8000 2600
Wire Wire Line
	8000 2600 8000 1500
Wire Wire Line
	8000 1500 8300 1500
Wire Wire Line
	5400 2600 5400 1500
Wire Wire Line
	5400 1500 6000 1500
Connection ~ 5400 2600
Wire Wire Line
	2500 2800 5600 2800
Wire Wire Line
	5600 1900 5600 4200
Wire Wire Line
	5600 1900 6000 1900
Wire Wire Line
	2500 2900 5700 2900
Wire Wire Line
	5700 2000 5700 4100
Wire Wire Line
	5700 2000 6000 2000
Wire Wire Line
	2500 3000 5800 3000
Wire Wire Line
	5800 2100 5800 4000
Wire Wire Line
	5800 2100 6000 2100
Wire Wire Line
	2500 3100 5900 3100
Wire Wire Line
	5900 2200 5900 3900
Wire Wire Line
	5900 2200 6000 2200
Wire Wire Line
	3700 1400 3400 1400
Wire Wire Line
	3400 1400 3400 2500
Connection ~ 3400 2500
Wire Wire Line
	3700 1500 3500 1500
Wire Wire Line
	3500 1500 3500 2600
Connection ~ 3500 2600
Wire Wire Line
	5500 1800 6000 1800
Wire Wire Line
	3200 3500 3700 3500
Wire Wire Line
	8300 1600 8100 1600
Wire Wire Line
	7700 3300 8300 3300
Wire Wire Line
	2500 3400 3100 3400
Wire Wire Line
	3100 3500 2500 3500
Wire Wire Line
	8300 3600 7700 3600
Wire Wire Line
	7700 3700 8300 3700
Text Label 7700 3600 0    60   ~ 0
PWM0
Text Label 7700 3700 0    60   ~ 0
PWM1
Text Label 3100 3400 2    60   ~ 0
PWM0
Text Label 3100 3500 2    60   ~ 0
PWM1
Text Label 7800 1100 0    60   ~ 0
3V3_EXTRA
Text Label 7700 3300 0    60   ~ 0
3V3_EXTRA
Wire Wire Line
	7700 3200 8300 3200
Text Label 7700 3200 0    60   ~ 0
5V
Text Label 5500 1800 0    60   ~ 0
GPCLK1
Wire Wire Line
	2500 3700 3100 3700
Text Label 3100 3700 2    60   ~ 0
GPCLK1
Text Label 3200 3500 0    60   ~ 0
3V3_EXTRA
Text Label 3000 1400 2    60   ~ 0
3V3_EXTRA
Wire Wire Line
	2500 1100 3700 1100
Text Label 3000 1100 2    60   ~ 0
5V
Wire Wire Line
	6000 1100 5500 1100
Text Label 5500 1100 0    60   ~ 0
3V3_EXTRA
Wire Wire Line
	6600 5000 6600 4800
Wire Wire Line
	6600 4800 7100 4800
Connection ~ 6600 5000
Text Label 7100 4800 2    60   ~ 0
I2C_INT
Wire Wire Line
	8100 1600 8100 1900
Wire Wire Line
	8100 1900 8800 1900
Text Label 8800 1900 2    60   ~ 0
I2C_INT
Wire Wire Line
	3700 1600 3600 1600
Wire Wire Line
	3600 1600 3600 1800
Wire Wire Line
	3600 1800 4200 1800
Text Label 4200 1800 2    60   ~ 0
I2C_INT
Text Notes 2400 6300 2    60   Italic 0
JTAG Probe
Text Label 3800 2500 0    60   ~ 0
I2C_SDA
Text Label 3800 2600 0    60   ~ 0
I2C_SCL
Text Label 3800 2800 0    60   ~ 0
I2S_BCLK
Text Label 3800 2900 0    60   ~ 0
I2S_LRCLK
Text Label 3800 3000 0    60   ~ 0
I2S_SDOUT
Text Label 3800 3100 0    60   ~ 0
I2S_SDIN
Wire Wire Line
	5900 3900 8300 3900
Connection ~ 5900 3100
Wire Wire Line
	5800 4000 8300 4000
Connection ~ 5800 3000
Wire Wire Line
	5700 4100 8300 4100
Connection ~ 5700 2900
Wire Wire Line
	5600 4200 8300 4200
Connection ~ 5600 2800
Text Notes 2400 4900 2    60   Italic 0
GPIO Inputs
Text Notes 2400 2700 2    60   Italic 0
I2S Audio / GPIO Outputs
Text Notes 2400 2100 2    60   Italic 0
I2C
Text Notes 2400 1600 2    60   Italic 0
UART
$Sheet
S 6000 1000 1400 1300
U 57483D93
F0 "labio-audio" 60
F1 "labio-audio.sch" 60
F2 "SDA" I L 6000 1400 60 
F3 "SCL" I L 6000 1500 60 
F4 "MCLK" I L 6000 1800 60 
F5 "BCLK" I L 6000 1900 60 
F6 "LRCLK" I L 6000 2000 60 
F7 "SDIN" I L 6000 2200 60 
F8 "SDOUT" I L 6000 2100 60 
F9 "VDD3V3" I L 6000 1100 60 
$EndSheet
NoConn ~ 2500 6800
NoConn ~ 2500 6700
NoConn ~ 2500 6600
NoConn ~ 2500 6500
NoConn ~ 2500 6400
NoConn ~ 2500 1800
NoConn ~ 2500 1700
$Sheet
S 3700 5800 1400 1300
U 576EC986
F0 "labio-dpad" 60
F1 "labio-dpad.sch" 60
F2 "DPAD_LEFT" I L 3700 6200 60 
F3 "DPAD_CENTER" I L 3700 6300 60 
F4 "DPAD_UP" I L 3700 6400 60 
F5 "DPAD_DOWN" I L 3700 6500 60 
F6 "DPAD_RIGHT" I L 3700 6600 60 
$EndSheet
Wire Wire Line
	3700 6200 3400 6200
Wire Wire Line
	3400 6200 3400 5100
Connection ~ 3400 5100
Wire Wire Line
	3700 6300 3300 6300
Wire Wire Line
	3300 6300 3300 5300
Connection ~ 3300 5300
Wire Wire Line
	3700 6400 3200 6400
Wire Wire Line
	3200 6400 3200 5200
Connection ~ 3200 5200
Wire Wire Line
	3700 6500 3100 6500
Wire Wire Line
	3100 6500 3100 5500
Connection ~ 3100 5500
Wire Wire Line
	3700 6600 3000 6600
Wire Wire Line
	3000 6600 3000 5400
Connection ~ 3000 5400
Wire Wire Line
	2500 4500 3500 4500
Wire Wire Line
	3500 4500 3500 4000
Wire Wire Line
	3500 4000 3700 4000
Wire Wire Line
	3700 3900 3400 3900
Wire Wire Line
	3400 3900 3400 4400
Wire Wire Line
	3400 4400 2500 4400
Wire Wire Line
	2500 4300 3300 4300
Wire Wire Line
	3300 4300 3300 3800
Wire Wire Line
	3300 3800 3700 3800
Text Notes 2400 4100 2    60   Italic 0
SPI
$Sheet
S 10200 3100 950  500 
U 57782573
F0 "labio-power" 60
F1 "labio-power.sch" 60
F2 "VDD_5V" I L 10200 3200 60 
F3 "VS_MOTOR" I L 10200 3500 60 
$EndSheet
Wire Wire Line
	10200 3200 10000 3200
Wire Wire Line
	10000 3200 10000 2900
Wire Wire Line
	10000 2900 8200 2900
Wire Wire Line
	8200 2900 8200 3200
Connection ~ 8200 3200
Wire Wire Line
	9700 3500 10200 3500
Wire Wire Line
	3100 1400 3100 1200
Wire Wire Line
	3100 1200 3700 1200
$Sheet
S 10200 5100 950  500 
U 578DDEC2
F0 "labio-mech" 60
F1 "labio-mech.sch" 60
$EndSheet
Wire Wire Line
	2500 4200 3200 4200
Wire Wire Line
	3200 4200 3200 4100
Wire Wire Line
	3200 4100 3700 4100
Text Notes 3750 4650 0    60   ~ 0
Use MISO as output to\nsupport 4-wire SPI. MUST\nchange to input on CS\ndeassert for other SPI devs.
Wire Wire Line
	3700 4200 3600 4200
Wire Wire Line
	3600 4200 3600 5200
Connection ~ 3600 5200
$EndSCHEMATC
