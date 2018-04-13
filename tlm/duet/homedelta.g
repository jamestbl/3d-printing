; homedelta.g
; called to home all towers on a delta printer
;
; generated by RepRapFirmware Configuration Tool on Sun Apr 01 2018 06:51:06 GMT-0400 (Eastern Daylight Time)
G91                        ; relative positioning
G1 S1 X550 Y550 Z550 F6000 ; move all towers to the high end stopping at the endstops (first pass)
G1 X-5 Y-5 Z-5 F1800 S2    ; go down a few mm
G1 S1 X10 Y10 Z10 F600     ; move all towers up once more (second pass)
G1 Z-5 F6000               ; move down a few mm so that the nozzle can be centred
G90                        ; absolute positioning
G1 X0 Y0 F6000             ; move X+Y to the centre
