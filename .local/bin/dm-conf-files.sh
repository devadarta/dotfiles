#!/usr/bin/env bash
#
# Script name: dmconf-files
# Description: Choose from a list of configuration files to edit.
# Dependencies: dmenu
# GitLab: https://www.gitlab.com/dwt1/dmscripts
# Contributors: Derek Taylor

# Defining the text editor to use.
DMEDITOR="kitty -e nvim"

# An array of options to choose.
# You can edit this list to add/remove config files.
declare -a options=(
"zsh - $HOME/.zshrc"
"neovim - $HOME/.config/nvim/init.vim"
"i3 - $HOME/.config/i3/config"
"picom - $HOME/.config/picom/picom.conf"
"polybar - $HOME/.config/polybar/config.ini"
"kitty - $HOME/.config/kitty/kitty.conf"
"gtk-css - $HOME/.config/gtk-3.0/gtk.css"
"quit"
)

# Piping the above array into dmenu.
# We use "printf '%s\n'" to format the array one item to a line.
choice=$(printf '%s\n' "${options[@]}" | dmenu -i -p 'Edit config ')

# What to do when/if we choose 'quit'.
if [[ "$choice" == "quit" ]]; then
    echo "Program terminated." && exit 1

# What to do when/if we choose a file to edit.
elif [ "$choice" ]; then
	cfg=$(printf '%s\n' "${choice}" | awk '{print $NF}')
	$DMEDITOR "$cfg"

# What to do if we just escape without choosing anything.
else
    echo "Program terminated." && exit 1
fi

