#! /bin/bash

cp -R $HOME/.config/alacritty $HOME/Documents/dotfilesArch/2_DesktopGUI
cp -R $HOME/.config/bspwm $HOME/Documents/dotfilesArch/2_DesktopGUI
cp -R $HOME/.config/init_session $HOME/Documents/dotfilesArch/2_DesktopGUI
cp -R $HOME/.config/polybar $HOME/Documents/dotfilesArch/2_DesktopGUI
cp -R $HOME/.config/sxhkd $HOME/Documents/dotfilesArch/2_DesktopGUI
cp -R $HOME/.config/X11 $HOME/Documents/dotfilesArch/2_DesktopGUI
cp -R $HOME/.config/zsh $HOME/Documents/dotfilesArch/2_DesktopGUI
cp -R $HOME/.config/ranger $HOME/Documents/dotfilesArch/2_DesktopGUI
cp -R $HOME/.config/picom $HOME/Documents/dotfilesArch/2_DesktopGUI
cp -R $HOME/.config/rofi $HOME/Documents/dotfilesArch/2_DesktopGUI
cp $HOME/.dotfiles.sh $HOME/Documents/dotfilesArch/2_DesktopGUI/SYNC.sh
cp $HOME/.neovim.sh $HOME/Documents/dotfilesArch/2_DesktopGUI/SYNC.sh

cd $HOME/Documents/dotfilesArch
git add -A
git commit -m "Updating configs"
git push
cd
echo "--> Executing neovim sync"
./.neovim.sh
