; pause.g
; called when a print from SD card is paused
;
; generated by RepRapFirmware Configuration Tool v2 on Fri Jan 04 2019 20:46:36 GMT-0500 (Eastern Standard Time)
M83            ; relative extruder moves
G1 E-1 F3600   ; retract 1mm of filament
G91            ; relative positioning
G1 Z5 F360     ; lift Z by 5mm
G90            ; absolute positioning
G1 X0 Y360 F6000 ; move out of the way
