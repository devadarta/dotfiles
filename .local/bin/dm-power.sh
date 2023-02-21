#!/bin/bash

suspend="󰒲 Suspend"
shutdown="⏻ Shutdown"
reboot="󱄌 Reboot"
logout="󰗽 Logout"
lock=" Lockscreen"

# Variable passed to rofi
options="$suspend\n$shutdown\n$reboot\n$logout\n$lock"

chosen="$(echo -e "$options" | dmenu -i -p "Power-Menu " )"
case $chosen in
    $suspend)
        sudo systemctl suspend
    ;;
    $shutdown)
        sudo shutdown -h now
	;;
    $reboot)
        sudo shutdown -r now
        ;;
    $logout)
        pkill -KILL -u $USER
        ;;
    $lock)
        i3lock --image $HOME/pictures/lock.png
esac
