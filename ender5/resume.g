; resume.g
; called before a print from SD card is resumed
;
; generated by RepRapFirmware Configuration Tool v3.1.1 on Thu Jun 04 2020 06:16:22 GMT-0400 (Eastern Daylight Time)
G1 R1 X0 Y0 Z5 F6000 ; go to 5mm above position of the last print move
G1 R1 X0 Y0          ; go back to the last print move
M83                  ; relative extruder moves
G1 E3 F1800          ; extrude 3mm of filament

