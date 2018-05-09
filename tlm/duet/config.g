7; Configuration file for Duet WiFi (firmware version 1.20 or newer)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool on Sun Apr 01 2018 06:51:06 GMT-0400 (Eastern Daylight Time)

; General preferences
M111 S0					  ; Debugging off
G21					  ; Work in millimetres
M555 P1					  ; Set firmware compatibility to look like RepRapFirmare
G90                                       ; Send absolute coordinates...
M83                                       ; ...but relative extruder moves
M665 L375 R165 H533 B175                  ; Set delta radius, diagonal rod length, printable radius and homed height
M666 X0 Y0 Z0                             ; Put your endstop adjustments here, or let auto calibration find them

; Network
M550 Ptlm-duet                            ; Set machine name
M552 S1                                   ; Enable network
M98 P/sys/passwords.g                     ; M587 S"..." P"..." & M551 P...
M552 S1                                   ; Enable network
M586 P0 S1                                ; Enable HTTP
M586 P1 S0                                ; Disable FTP
M586 P2 S0                                ; Disable Telnet

; Drives
M569 P0 S0                                ; Drive 0 goes backwards
M569 P1 S0                                ; Drive 1 goes backwards
M569 P2 S0                                ; Drive 2 goes backwards
M569 P3 S0                                ; Drive 3 goes backwards
M569 P4 S1                                ; Drive 4 goes forwards
M350 E16:32 I0 				  ; Configure microstepping without interpolation
M350 X64 Y64 Z64 I1 			  ; Configure microstepping with interpolation
M92 X320 Y320 Z320 E402:5400 		  ; Set steps per mm
M566 X1500 Y1500 Z1500 E1500:300           ; Set maximum instantaneous speed changes (mm/min)
M203 X39960 Y39960 Z39960 E3000:3000	  ; Set maximum speeds (mm/min)
;M201 X5000 Y5000 Z5000 E500:120          ; Set accelerations (mm/s^2)
M201 X1000 Y1000 Z1000 E1500:120    	  ; Set accelerations (mm/s^2)
M906 X1400 Y1400 Z1400 E1500:500 I30	  ; Set motor currents (mA) and motor idle factor in per cent
M84 S30					  ; Set idle timeout

; Axis Limits
M208 Z-10 S1                              ; Set minimum Z

; Endstops
M574 X2 Y2 Z2 S1                          ; Set active high endstops

; Z-Probe
M98 P/sys/zprobe-fsr.g
M557 R140 S20                             ; Define mesh grid

; Heaters (further extended by the selected hotend included below)
M301 H0 S1.00 P10 I0.1 D200 T0.4 W180 B30 ; Use PID on bed heater (may require further tuning)
M305 P0 R4700 T100000 B4148 C2.117e-7     ; Set thermistor + ADC parameters for bed heater
M143 H0 S120                              ; Set temperature limit for heater 0 to 120C

; Fans
M106 P0 S0 I0 F500 H-1                    ; Set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S1 I0 F500 H-1                    ; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P2 S1 I0 F500 H-1                    ; Set fan 2 value, PWM signal inversion and frequency. Thermostatic control is turned off

M98 P/sys/hotend-e3dv6.g

; Automatic saving after power loss is not enabled

; Custom settings are not configured

; Miscellaneous
M501                                      ; Load saved parameters from non-volatile memory
