M561                                            ; clear any bed transform, otherwise homing may be at the wrong height

; bed.g file for RepRapFirmware, generated by Escher3D calculator
; 10 points, 6 factors, probing radius: 100, probe offset (0, 0)
; S-1 = print probed values
; S4 = endstops + delta radius
; S6 = ^ + x/y angle
; S8 = ^ + tilt
G28

G30 P0 X0.00 Y100.00 Z-99999 H0
G30 P1 X86.60 Y50.00 Z-99999 H0
G30 P2 X86.60 Y-50.00 Z-99999 H0
G30 P3 X0.00 Y-100.00 Z-99999 H0
G30 P4 X-86.60 Y-50.00 Z-99999 H0
G30 P5 X-86.60 Y50.00 Z-99999 H0
G30 P6 X0.00 Y50.00 Z-99999 H0
G30 P7 X43.30 Y25.00 Z-99999 H0
G30 P8 X43.30 Y-25.00 Z-99999 H0
G30 P9 X0.00 Y-50.00 Z-99999 H0
G30 P10 X-43.30 Y-25.00 Z-99999 H0
G30 P11 X-43.30 Y25.00 Z-99999 H0
G30 P12 X0 Y0 Z-99999 S6

G1 X0 Y0 Z150 F12000                    ; get the head out of the way of the bed