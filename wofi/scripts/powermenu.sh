#!/bin/bash

chosen=$(printf "  Lock\n  Logout\n  Reiniciar\n⏻  Apagar" | \
    wofi --dmenu \
         --width 250 \
         --height 220 \
         --location center \
         --prompt "")

case "$chosen" in
    "⏻  Apagar") systemctl poweroff ;;
    "  Reiniciar") systemctl reboot ;;
    "  Logout") hyprctl dispatch exit ;;
    "  Lock") hyprlock ;;
esac
