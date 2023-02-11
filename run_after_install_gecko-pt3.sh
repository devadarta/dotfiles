#!/bin/bash

echo "[`date`] Install NeoVim Plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#   Without sudo  #
#echo "[`date`] Install LunarVim"
#LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/fc6873809934917b470bff1b072171879899a36b/utils/installer/install.sh)
# Uninstall LunarVim
#echo "[`date`] To Uninstall LunarVim use this command:  bash $HOME/.local/share/lunarvim/lvim/utils/installer/uninstall.sh"

#echo "[`date`] export Cargo Bin and local Bin - Used in LunarVim"
#cat "export PATH=$HOME/.cargo/bin:$HOME/.local/bin:$PATH" >> $HOME/.zshrc 

# PowerLevel10k ?
#echo "[`date`] Install PowerLevel10k (pending)"
# Recomended Fonts // files
#git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.config/powerlevel10k
#echo 'source $HOME/.config/powerlevel10k/powerlevel10k.zsh-theme' >> $HOME/.zshrc

#echo "[`date`] Install asdf"
#git clone https://github.com/asdf-vm/asdf.git $HOME/.config/asdf --branch v0.10.2
#cat "$HOME/.config/asdf/asdf.sh" >> $HOME/.zshrc
