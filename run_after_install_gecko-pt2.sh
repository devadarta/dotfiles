#!/bin/bash

### SCRITP THAT INSTALL SOFTWARES WITH SUDO ###


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
	alacritty
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
	jq
	make
	playerctl
        xclip
	xbacklight
        binutils 
	coreutils 
	curl 
	fuse 
	sed 
	tar 
	unzip 
	zsync
	nodejs20
	npm20
	ripgrep
	fd
EOF
)

#Maibe add this packages
	#xclip
	#nodejs
	#npm
	#cargo
	#qutebrowser
	
#echo "[`date`] Install base devel "
#zypper install -y -t pattern devel_basis

echo "[`date`] Add Flathub repo to Flatpak"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


echo "[`date`] Install todotxt-cli"
cd /tmp/
git clone https://github.com/todotxt/todo.txt-cli.git
cd todo.txt-cli/
make
make install CONFIG_DIR=$HOME/.config INSTALL_DIR=$HOME/.local/bin BASH_COMPLETION=/usr/share/bash-completion/completions

echo "zscroll dependenci for spotify (INCOMPLETE)"
cd /tmp/
git clone https://github.com/noctuid/zscroll
#sudo python3 zscroll/setup.py install

echo "[`date`] Change to ZSH"
chsh -s /usr/bin/zsh

echo Recomended reboot the system
echo wait 3 seconds ...
echo -e "\n"
sleep 3
