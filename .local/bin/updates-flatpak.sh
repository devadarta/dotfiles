#!/bin/sh

updates=$(echo 'n' | flatpak update 2>/dev/null | tail -n +5 | head -2 | wc -l)

if [ "$updates" -gt 0 ]; then
    echo "$updates"
    dunstify -u normal "Flatpak updates!" "$updates flatpaks to update.
    Click on   icon in the bar to update"
else
    echo ""
fi
