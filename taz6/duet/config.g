; Configuration file for Duet Maestro (firmware version 2.03)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v2.1.3 on Sun Dec 01 2019 12:21:58 GMT-0500 (Eastern Standard Time)

; General preferences
G90                                       ; send absolute coordinates...
M83                                       ; ...but relative extruder moves
M550 P"taz6-duet"                              ; set printer name

; Network
M98 P"password.g"
M552 P0.0.0.0 S1                          ; enable network and acquire dynamic address via DHCP
M586 P0 S1                                ; enable HTTP
M586 P1 S0                                ; disable FTP
M586 P2 S0                                ; disable Telnet

; Drives
M569 P0 S0                                ; physical drive 0 goes backward
M569 P1 S1                                ; physical drive 1 goes forward
M569 P2 S0                                ; physical drive 2 goes backward
M569 P3 S1                                ; physical drive 3 goes forward
M569 P4 S0                                ; physical drive 2 goes backward

; Axis mapping
M584 X0 Y1 Z2:4 E3                        ; set drive mapping
M671 X370:-110 Y140:140                   ; leadscrew positions

; Steps and speeds
M350 X16 Y16 Z16 E16 I1                   ; configure microstepping with interpolation
M92 X100.50 Y100.50 Z1600.00 E830.00      ; set steps per mm
M566 X480.00 Y480.00 Z24.00 E600.00       ; set maximum instantaneous speed changes (mm/min)
M203 X18000.00 Y18000.00 Z180.00 E1500.00 ; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z20.00 E250.00       ; set accelerations (mm/s^2)
M906 X950 Y950 Z1200 E750 I30              ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                   ; Set idle timeout

; Axis Limits
M208 X-20 Y-20 Z-1 S1                      ; set axis minima
M208 X300 Y303 Z270 S0                    ; set axis maxima

; Endstops
M574 X1 Y2 S1                             ; set xy active high endstops
M574 Z1 S0                                ; set z active low endstop

; Z-Probe
M558 P4 H3 F60 T9000 I1                   ; set Z probe type to switch and the dive height + speeds
G31 P500 X0 Y0 Z0.8                      ; set Z probe trigger value, offset and trigger height
M557 X-10:288 Y-9:285 P2                  ; define mesh grid

; Bed heater
M307 H0 B0 S1.00                          ; disable bang-bang mode for the bed heater and set PWM limit
M305 P0 T100000 B3972 C7.060000e-8 R2200  ; set thermistor + ADC parameters for heater 0
M143 H0 S120                              ; set temperature limit for heater 0 to 120C

; Hotend heater
M305 P1 T100000 B4725 R2200 A31          ; set thermistor + ADC parameters for heater 1
M143 H1 S280                              ; set temperature limit for heater 1 to 280C

; Fans
M106 P0 S1 I0 F500 H1 T45                 ; set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on
M106 P2 S0 I0 F500 H-1                    ; set fan 2 value, PWM signal inversion and frequency. Thermostatic control is turned off

; Tools
M563 P0 D0 H1 F2                          ; define tool 0
G10 P0 X0 Y0 Z0                           ; set tool 0 axis offsets
G10 P0 R0 S0                              ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined

; Miscellaneous
T0                                        ; select first tool

