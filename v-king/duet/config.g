; Configuration file for Duet Maestro (firmware version 1.21)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v2 on Fri Jan 04 2019 20:46:36 GMT-0500 (Eastern Standard Time)

; General preferences
G90                                        ; Send absolute coordinates...
M83                                        ; ...but relative extruder moves

M667 S1                                    ; Select CoreXY mode

; Network
M550 P"v-king"                             ; Set machine name
M98 P/sys/passwords.g
M553 P255.255.255.0			   ; Set netmask
M554 P192.168.1.1                          ; Set gateway
M552 P192.168.1.8 S1                       ; Enable network
M586 P0 S1                                 ; Enable HTTP
M586 P1 S0                                 ; Disable FTP
M586 P2 S0                                 ; Disable Telnet

; Endstops
M574 X1 Y1 Z0 S0                              ; Set active low x/y min endstops
;M574 Z1 S2                                 ; Set z-probe z min endstop

; Drive directions
M569 P0 S1                                 ; Drive 0 direction (x)
M569 P1 S1                                 ; Drive 1 direction (y)
M569 P2 S1                                 ; Drive 2 direction (z back left) (z)
M569 P3 S1                                 ; Drive 3 direction (e0)
M569 P4 S1                                 ; Drive 4 direction (z front right) (e1)
M569 P5 S0                                 ; Drive 5 direction (z back right) (breakout 1)
M569 P6 S0                                 ; Drive 6 direction (z front left) (breakout 2)

; Z drive setup
M584 X0 Y1 E3 Z2:5:6:4                         ; 4 Z motors connected to driver outputs 2 (z), 4 (e1), 5 and 6 (breakout board)
M671 X-10:408:-10:408 Y440:440:-42:-42 S2

; Drive steps per mm
; z = 360/0.067/40*16*2 = 4298.5
; 0.067 is step angle from spec sheet, 40 = belt mm for 1 full rotation, 16 micro stepping, 2 = "double belt resolution"
; z = 360/1.8*26.85/40*16*2 = 4296
; 1.8 is the normal step angle, 26.85 is the gear ratio, 2 = "double belt resolution"
M92 X160 Y160 Z2148 E2645                ; Set steps per mm at 1/16 micro stepping (E recommended is 2700)
M350 X16 Y16 E16 I1                          ; Configure microstepping with interpolation for x/y
M350 Z16 I0                          ; Configure microstepping without interpolation for e/z

; Drive speeds and currents
M566 X600 Y600 Z18 E40                     ; Set maximum instantaneous speed changes (mm/min)
M203 X24000 Y24000 Z360 E6000              ; Set maximum speeds (mm/min)
M201 X1000 Y1000 Z500 E120                 ; Set accelerations (mm/s^2)
M906 X1200 Y1200 Z840 E500 I30             ; Set motor currents (mA) and motor idle factor in per cent
M84 S30                                    ; Set idle timeout

; Axis Limits
M98 P/sys/axis-limits.g

; Z-Probe
M98 P/sys/zprobe.g
M557 X10:330 Y10:370 S31:36                  ; Define mesh grid
M376 H5
;G29 S1

; Heaters
M307 H1 A159.7 C501.4 D3.1 V24.2 B0
M305 P0 T100000 B4138                      ; Set thermistor + ADC parameters for heater 0
M143 H0 S120                               ; Set temperature limit for heater 0 to 120C
M307 H1 A368.6 C224.6 D3.4 V24.1
M305 P2 B4725 C7.060000e-8                 ; Set thermistor + ADC parameters for heater 1
M143 H2 S280                               ; Set temperature limit for heater 1 to 280C

; Fans
; DEAD: M106 P0 S0 I0 F500 H-1                     ; part cooling fan: PWM signal inversion and frequency. Thermostatic control is turned off
; TEMPORARILY MOVED TO ALWAYS ON: M106 P1 S1 I0 F500 H1 T35                  ; hotend fan: PWM signal inversion and frequency. Thermostatic control is turned on
M106 P1 S0 I0 H-1
M106 P2 S1 I0 F500 H-1                     ; case fan: PWM signal inversion and frequency. Thermostatic control is turned off, Fan on

; Tools
M563 P0 D0 H2 F1                           ; Define tool 0
G10 P0 X0 Y0 Z0                            ; Set tool 0 axis offsets
G10 P0 R0 S0                               ; Set initial tool 0 active and standby temperatures to 0C

; Pressure advance
; M572 D0 S0.2

; Automatic saving after power loss is not enabled

; Custom settings are not configured

; Miscellaneous
T0                                         ; Select first tool