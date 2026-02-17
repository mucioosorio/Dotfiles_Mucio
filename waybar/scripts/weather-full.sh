#!/bin/bash

CITY="Ciudad+Obregon"

alacritty \
  --class weather-popup \
  --title Weather \
  -o window.decorations=none \
  -o window.opacity=0.80 \
  -o window.padding.x=20 \
  -o window.padding.y=20 \
  -e sh -c "curl wttr.in/${CITY}; echo; echo 'Presiona cualquier tecla para cerrar'; read -n 1"

