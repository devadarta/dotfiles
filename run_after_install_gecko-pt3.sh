#!/bin/bash
#   Without sudo  #

echo "[`date`] Get HACK font and install"
cd /tmp/
wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Hack.zip
unzip Hack.zip
rm *Windows*
cp *.ttf $HOME/.local/bin/
cd $HOME
fc-cache -f -v

echo "[`date`] Install NeoVim Plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#echo "[`date`] Install LunarVim"
#LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/fc6873809934917b470bff1b072171879899a36b/utils/installer/install.sh)
# Uninstall LunarVim
#echo "[`date`] To Uninstall LunarVim use this command:  bash $HOME/.local/share/lunarvim/lvim/utils/installer/uninstall.sh"

#echo "[`date`] export Cargo Bin and local Bin - Used in LunarVim"
#cat "export PATH=$HOME/.cargo/bin:$HOME/.local/bin:$PATH" >> $HOME/.zshrc 

echo "[`date`] Install PowerLevel10k plugin"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.config/zsh/plugins/powerlevel10k
#echo 'source $HOME/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

echo "[`date`] Install ash-autosuggestions plugin"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
#echo 'source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh' >>~/.zshrc

#echo "[`date`] Install asdf"
#git clone https://github.com/asdf-vm/asdf.git $HOME/.config/asdf --branch v0.10.2
#cat "$HOME/.config/asdf/asdf.sh" >> $HOME/.zshrc
