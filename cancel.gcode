; Switch to relative coordinates
G91

; Retract the filament 1mm
G1 E-1 F300

; Move Z up, move extruder away, and retract 3mm
G1 Z+10 E-3 X-20 Y-20 F6000

; Disable all heaters
{% snippet 'disable_hotends' %}
{% snippet 'disable_bed' %}

; Fan at 100% to cool nozzle
M106 S255

; Absolute positioning
G90

; Home X to get it out of the way.
G1 X0

; Move bed forward for easy removal of print
G1 Y280

; Stepper motors off
M84

M117 Cooling for 60s

; Wait 60 seconds
G4 P60000

; Switch off nozzle cooling fan
M106 S0

M117 Cancelled
; switch off the print in progress LED with Octoprint Enclosure PlugIn
ENC O3 S0
