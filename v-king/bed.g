; bed.g
; called to perform automatic bed compensation via G32

G1 Z5
G1 X50 Y50 F12000
G30 P0 Z-99999

G1 Z5
G1 X50 Y325 F12000
G30 P1 Z-99999

G1 Z5
G1 X300 Y325 F12000
G30 P2 Z-99999

G1 Z5
G1 X300 Y50 F12000
G30 P3 Z-99999 S4
