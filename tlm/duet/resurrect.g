; File "0:/gcodes/alligator_228.gcode" resume print after print paused at 2018-05-09 09:21
M140 P0 S90.0
G10 P1 S240 R170
T1 P0
G10 P0 S215 R140
T0 P0
; Delta parameters
M665 L375.000 R165.053 H538.070 B175.0 X-0.433 Y-0.824 Z0.000
M666 X0.267 Y-0.061 Z-0.206 A0.00 B0.00
M98 Presurrect-prologue.g
M106 P0 S0.80
M106 P1 S1.00
M106 P2 S1.00
M106 P3 S0.00
M106 P4 S0.00
M106 P5 S0.00
M106 P6 S0.00
M106 P7 S0.00
M106 P8 S0.00
M106 S204.00
M116
M290 S0.000
G92 E14.88896
M82
M23 0:/gcodes/alligator_228.gcode
M26 S8527588 P0.000
G0 F6000 Z9.649
G0 F6000 X-0.69 Y-7.29
G0 F6000 Z7.649
G1 F1800.0 P0
M24
