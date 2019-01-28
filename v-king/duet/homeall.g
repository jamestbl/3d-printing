; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v2 on Fri Jan 04 2019 20:46:36 GMT-0500 (Eastern Standard Time)
G91                    ; relative positioning
G1 Z2 F6000 S2         ; lift Z relative to current position
G1 S1 X-345 Y-385 F1800 ; move quickly to X or Y endstop and stop there (first pass)
G1 S1 X-345            ; home X axis
G1 S1 Y-385            ; home Y axis
G1 X5 Y5 F6000         ; go back a few mm
G1 S1 X-345 F360       ; move slowly to X axis endstop once more (second pass)
G1 S1 Y-385            ; then move slowly to Y axis endstop
G30		       ; probe a little to squash any filament on the nozzle
G90                    ; absolute positioning
G1 X155 Y180 F12000    ; go to center
; G1 X0 Y360 F12000        ; go to a corner likely to be pristinely clean
G30                    ; home Z by probing the bed