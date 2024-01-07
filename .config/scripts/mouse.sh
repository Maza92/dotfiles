#!/bin/bash
# Obtener el nombre del monitor enfocado
focused_monitor=$(bspc query -M -m focused --names)

# Obtener las coordenadas del centro del espacio de trabajo activo
center_coordinates=$(bspc query -T -m $focused_monitor | jq -r '.focused.center')

# Mover el cursor al centro del espacio de trabajo
xdotool mousemove --sync ${center_coordinates//,/ }
