#!/bin/bash

# Obtener el número de escritorio proporcionado como argumento
target_workspace=$1

# Cambiar al espacio de trabajo especificado
bspc desktop -f "$target_workspace" '--follow'

# Mover el mouse dependiendo del número de escritorio
if [ "$target_workspace" -ge 1 ] && [ "$target_workspace" -le 4 ]; then
    # Ejecutar el comando para el rango de escritorios 1-4
    xdotool mousemove --screen HDMI-A-0 683 1408
    # Comando a ejecutar para el rango 1-4
    # comando1
elif [ "$target_workspace" -ge 5 ] && [ "$target_workspace" -le 8 ]; then
    # Ejecutar el comando para el rango de escritorios 5-8
    xdotool mousemove --screen HDMI-A-0 640 512
    # Comando a ejecutar para el rango 5-8
    # comando2
else
    echo "Número de espacio de trabajo fuera del rango especificado."
    exit 1
fi

echo "Script ejecutado en $(date)" >> /tmp/script.log

