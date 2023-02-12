#!/bin/bash

echo "[`date`] Fail on error and report it, debug all lines "
set -eu -o pipefail

echo "[`date`] Check sudo "
sudo -n true
test $? -eq 0 || exit 1 "you should have sudo privilege to run this script"

echo "[`date`] Installing the i3 and others applications"
while read -r p ; do zypper install -y $p ; done < <(cat << "EOF"
	i3
	i3lock
	i3status
	dmenu
	polybar
	dunst
	rofi
	picom
	kitty
	feh
	numlockx
	neovim
	git
	zsh
	pavucontrol
	mplayer
	mupdf
	flatpak
	htop
	wget
	curl
	ImageMagick
	ranger
	man
	geany
EOF
)

#Maibe add this packages
	#make
	#nodejs
	#npm
	#cargo
	#qemu
	#qutebrowser
	#gnome-screenshot
    
#echo "[`date`] Intall base devel "
#zypper install -y -t pattern devel_basis

echo "[`date`] Add Flathub repo to Flatpak"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "[`date`] Change to ZSH"
chsh -s /bin/zsh

echo Recomended reboot the system
echo wait 3 seconds ...
echo -e "\n"
sleep 3
