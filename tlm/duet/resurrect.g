; File "Track.gcode" resume print after print paused at 2018-04-13 05:33
M140 P0 S70.0
G10 P0 S205 R205
T0 P0
; Delta parameters
M665 L397.107 R157.459 H525.569 B175.0 X-0.519 Y-0.964 Z0.000
M666 X0.294 Y-0.028 Z-0.267 A0.00 B0.00
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
G92 E63.50265
M82
M23 Track.gcode
M26 S44045417 P0.000
G0 F6000 Z27.030
G0 F6000 X-51.36 Y-22.76
G0 F6000 Z25.030
G1 F2880.0 P0
M24
