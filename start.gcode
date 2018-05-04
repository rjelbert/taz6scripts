;This G-Code has been generated specifically for the LulzBot TAZ 6 with Aerosturder
G26 ; clear potential 'probe fail' condition
G21 ; set units to Millimetres
M107 ; disable fans
G90 ; absolute positioning
M82 ; set extruder to absolute mode
G92 E0 ; set extruder position to 0
M140 S{material_bed_temperature} ; start bed heating up
G28 XY ; home X and Y
G1 X-19 Y258 F1000 ; move to safe homing position
M109 R{material_soften_temperature} ; soften filament before homing Z
G28 Z ; home Z
G1 E-15 F100 ; retract filament
M109 R{material_wipe_temperature} ; wait for extruder to reach wiping temp
G1 X-15 Y100 F3000 ; move above wiper pad
G1 Z1 ; push nozzle into wiper
; commenting out the original wipe sequence because it was not working.
;G1 X-17 Y95 F1000 ; slow wipe
;G1 X-17 Y90 F1000 ; slow wipe
;G1 X-17 Y85 F1000 ; slow wipe
;G1 X-15 Y90 F1000 ; slow wipe
;G1 X-17 Y80 F1000 ; slow wipe
;G1 X-15 Y95 F1000 ; slow wipe
;G1 X-17 Y75 F2000 ; fast wipe
;G1 X-15 Y65 F2000 ; fast wipe
;G1 X-17 Y70 F2000 ; fast wipe
;G1 X-15 Y60 F2000 ; fast wipe
;G1 X-17 Y55 F2000 ; fast wipe
;G1 X-15 Y50 F2000 ; fast wipe
;G1 X-17 Y40 F2000 ; fast wipe
;G1 X-15 Y45 F2000 ; fast wipe
;G1 X-17 Y35 F2000 ; fast wipe
;G1 X-15 Y40 F2000 ; fast wipe
;G1 X-17 Y70 F2000 ; fast wipe
;G1 X-15 Y30 Z2 F2000 ; fast wipe
;G1 X-17 Y35 F2000 ; fast wipe
;G1 X-15 Y25 F2000 ; fast wipe
;G1 X-17 Y30 F2000 ; fast wipe
;G1 X-15 Y25 Z1.5 F1000 ; slow wipe
;G1 X-17 Y23 F1000 ; slow wipe
; new sequence in here, as proposed by Lulzbot tech support
; it is similr to the re-clean sequence if a self level probe fails
G1 X-17 Y95 F6000 ; Faster Wipe
G1 X-17 Y23 F6000 ; Faster Wipe
G1 X-17 Y95 F6000 ; Faster Wipe
G1 X-17 Y23 F6000 ; Faster Wipe
G1 X-17 Y95 F6000 ; Faster Wipe
G1 X-17 Y23 F6000 ; Faster Wipe
G1 X-17 Y95 F6000 ; Faster Wipe
G1 X-17 Y23 F6000 ; Faster Wipe
G1 X-17 Y95 F6000 ; Faster Wipe
G1 X-17 Y23 F6000 ; Faster Wipe
G1 X-17 Y95 F6000 ; Faster Wipe
G1 X-17 Y23 F6000 ; Faster Wipe
G1 X-17 Y95 F6000 ; Faster Wipe
G1 X-17 Y23 F6000 ; Faster Wipe
G1 X-17 Y95 F6000 ; Faster Wipe
G1 X-17 Y23 F6000 ; Faster Wipe
; end of new faster wipe sequence
G1 Z10 ; raise extruder
M109 R{material_probe_temperature} ; wait for extruder to reach probe temp
G1 X-9 Y-9 ; move above first probe point
M204 S100 ; set probing acceleration
G29 ; start auto-leveling sequence
M204 S500 ; restore standard acceleration
G1 X0 Y0 Z15 F5000 ; move up off last probe point
G4 S1 ; pause
M400 ; wait for moves to finish
M117 Heating... ; progress indicator message on LCD
M109 R{material_print_temperature} ; wait for extruder to reach printing temp
M190 S{material_bed_temperature_layer_0} ; wait for bed to reach printing temp
G1 Z2 E0 F75 ; prime tiny bit of filament into the nozzle
