; homez.g
; called to home the Z axis
;
; generated by RepRapFirmware Configuration Tool v2 on Fri Jan 04 2019 20:46:36 GMT-0500 (Eastern Standard Time)
G91              ; relative positioning
G1 Z5 F6000 S2   ; lift Z relative to current position
G90              ; absolute positioning
G1 X15 Y15 F6000 ; go to first probe point
G30              ; home Z by probing the bed

; Uncomment the following lines to lift Z after probing
;G91             ; relative positioning
;G1 S2 Z5 F100   ; lift Z relative to current position
;G90             ; absolute positioning

