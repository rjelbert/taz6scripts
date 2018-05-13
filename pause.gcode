; Pause Script
; relative XYZE
G91
M83
; retract filament, move Z slightly upwards
G1 Z+5 E-5 F4500
; absolute XYZE
M82
G90
; move to a safe rest position, adjust as necessary
G1 X0 Y0
