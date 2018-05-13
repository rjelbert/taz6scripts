; Resume Script
; relative extruder
M83
; prime nozzle
G1 E-5 F4500
G1 E5 F4500
G1 E5 F4500
; absolute E
M82
; absolute XYZ
G90
; reset E
G92 E{{ pause_position.e }}
; move back to pause position XYZ
G1 X{{ pause_position.x }} Y{{ pause_position.y }} Z{{ pause_position.z }} F4500
; reset to feed rate before pause
G1 {{ pause_position.f }}
