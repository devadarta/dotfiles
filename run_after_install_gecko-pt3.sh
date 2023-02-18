#!/bin/bash
#   Without sudo  #

bin_dir=$HOME/.local/bin
flatpak_dir=/var/lib/flatpak/exports/bin

echo "Install flatpak apps"
flatpak install com.spotify.Client org.libreoffice.LibreOffice org.flameshot.Flameshot com.microsoft.Edge com.authy.Authy org.keepassxc.KeePassXC com.discordapp.Discord net.cozic.joplin_desktop org.mozilla.Thunderbird com.github.eneshecan.WhatsAppForLinux org.telegram.desktop -y

echo "Links simbólicos para acessar via linha de comando"
ln -s $flatpak_dir/com.spotify.Client $bin_dir/spotify
ln -s $flatpak_dir/org.flameshot.Flameshot $bin_dir/flameshot
ln -s $flatpak_dir/com.microsoft.edge $bin_dir/edge
ln -s $flatpak_dir/org.libreoffice.LibreOffice $bin_dir/loffice
ln -s $flatpak_dir/com.authy.Authy $bin_dir/authy
ln -s $flatpak_dir/org.keepassxc.KeePassXC $bin_dir/kpass
ln -s $flatpak_dir/com.discordapp.Discord $bin_dir/discord
ln -s $flatpak_dir/net.cozic.joplin_desktop $bin_dir/joplin
ln -s $flatpak_dir/org.mozilla.Thunderbird $bin_dir/thunderbird
ln -s $flatpak_dir/com.github.eneshecan.WhatsAppForLinux $bin_dir/wpp
ln -s $flatpak_dir/org.telegram.desktop $bin_dir/telegram

echo "[`date`] Install todofi.sh"
cd $bin_dir
git clone https://github.com/hugokernel/todofi.sh.git
todofi.sh -c $HOME/.config/todo/todofish.conf

echo "[`date`] Get HACK font and install"
cd /tmp/
wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Hack.zip
unzip Hack.zip
rm *Windows*
cp *.ttf $bin_dir/
cd $HOME
fc-cache -f -v

echo "[`date`] Polybar Modules/Scripts"
cd /tmp/ 
git clone https://github.com/polybar/polybar-scripts.git
echo " battery combined udev "
mv polybar-scripts/polybar-scripts/battery-combined-udev/battery-combined-udev.sh $bin_dir/
echo " system usb udev "
mv polybar-scripts/polybar-scripts/system-usb-udev/system-usb-udev.sh $bin_dir/
echo " updates flatpak "
mv polybar-scripts/polybar-scripts/updates-flatpak/updates-flatpak.sh $bin_dir/
echo " spotify now-playing "
git clone https://github.com/PrayagS/polybar-spotify.git
mv polybar-spotify/get_spotify_status.sh $bin_dir/
mv polybar-spotify/scroll_spotify_status.sh $bin_dir/

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

echo "`[date]` Install greenclip clipboard manager for rofi"
cd $HOME/.local/bin
wget https://github.com/erebe/greenclip/releases/download/v4.2/greenclip


echo "`[date]` Permission to execute local bin"
cd $HOME/.local/bin
chmod +x *
