; homex.g
; called to home the X axis
;
; generated by RepRapFirmware Configuration Tool v2 on Fri Jan 04 2019 20:46:36 GMT-0500 (Eastern Standard Time)
G91              ; relative positioning
G1 Z5 F6000 S2   ; lift Z relative to current position
G1 S1 X345 F1800 ; move quickly to X axis endstop and stop there (first pass)
G1 X-5 F6000     ; go back a few mm
G1 S1 X345 F360  ; move slowly to X axis endstop once more (second pass)
G1 Z-5 F6000 S2  ; lower Z again
G90              ; absolute positioning

