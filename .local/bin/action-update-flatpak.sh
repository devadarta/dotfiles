#!/bin/bash

dunstify -u low " Flatpak update" "Verifying flatpaks"
#curr_path=$HOME/.local/bin/
count=sh updates-flatpak.sh

if [ count -gt 0 ]; then
    dunstify -u low " Flatpak update" "Updating $count flatpaks"
    flatpak update -y
    dunstify -u low " Flatpak update" "Flatpak is now up to date"
else
    dunstify -u low " Flatpak update" "Flatpak is already up to date"
fi
