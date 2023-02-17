#!/bin/bash

echo "[`date`] Fail on error and report it, debug all lines "
set -eu -o pipefail

echo "[`date`] Remove Google repositories"
sudo zypper removerepo Google-chrome
sudo zypper removerepo Google-talkplugin
#echo "[`date`] Add virtuaization repository "
#zypper addrepo https://download.opensuse.org/repositories/Virtualization/openSUSE_Tumbleweed/Virtualization.repo
echo "[`date`] Refresh repo and Update System"
sudo zypper refresh

dir_cfg=$HOME/.config
echo "[`date`] Create config dirs and local bin"
mkdir -p $dir_cfg/
#mkdir -p $dir_cfg/asdf
mkdir -p $dir_cfg/backgrounds/
mkdir -p $dir_cfg/dunst/
mkdir -p $dir_cfg/feh/
mkdir -p $dir_cfg/i3/
mkdir -p $dir_cfg/kitty/
mkdir -p $dir_cfg/nvim/
mkdir -p $dir_cfg/polybar/
mkdir -p $dir_cfg/picom/
mkdir -p $dir_cfg/rofi/
mkdir -p $dir_cfg/zsh/
mkdir -p $dir_cfg/zsh/plugins/

mkdir -p $HOME/.local/bin/

echo "[`date`] Create dirs Fonts "
dir_fonts=$HOME/.local/share/fonts
mkdir -p $dir_fonts/
mkdir -p $dir_fonts/Hack/

echo "[`date`] Rename user dirs"
mv $HOME/Desktop $HOME/desktop
mv $HOME/Documents $HOME/documents
mv $HOME/Downloads $HOME/downloads
mv $HOME/Music $HOME/music
mv $HOME/Pictures $HOME/pictures
mv $HOME/Videos $HOME/videos
mv $HOME/Public $HOME/public
mv $HOME/Templates $HOME/templates

echo "[`date`] Configure XDG USER DIRS >> " $dir_cfg
echo 'XDG_DESKTOP_DIR="$HOME/desktop"' > $dir_cfg/user-dirs.dirs
echo 'XDG_DOCUMENTS_DIR="$HOME/documents"' >> $dir_cfg/user-dirs.dirs
echo 'XDG_DOWNLOAD_DIR="$HOME/downloads"' >> $dir_cfg/user-dirs.dirs
echo 'XDG_MUSIC_DIR="$HOME/music"' >> $dir_cfg/user-dirs.dirs
echo 'XDG_PICTURES_DIR="$HOME/pictures"' >> $dir_cfg/user-dirs.dirs
echo 'XDG_PUBLICSHARE_DIR="$HOME/public"' >> $dir_cfg/user-dirs.dirs
echo 'XDG_TEMPLATES_DIR="$HOME/templates"' >> $dir_cfg/user-dirs.dirs
echo 'XDG_VIDEOS_DIR="$HOME/videos"' >> $dir_cfg/user-dirs.dirs

echo "[`date`] Update system"
sudo zypper dup -y

echo "[`date`] Reboot"
sudo reboot
