#!/bin/bash

gnome-terminal -e "/bin/bash -c 'java -jar jasmin.jar $1; java $2; echo; read -p 'Pulse_intro_pasa_salir_shabo...'; exit; exec /bin/bash'; &"
