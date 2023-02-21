#!/bin/sh

updates=$(echo 'n' | zypper list-updates 2>/dev/null | tail -n +5 | wc -l)

if [ "$updates" -gt 0 ]; then
    echo "$updates"
    dunstify "System updates!" "$updates packages to update.
Click on  icon in the bar to update!"

else
    echo ""
fi
