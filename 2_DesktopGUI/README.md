# Installation
First of all, you could install a display manager, for example:
- [Ly Display Manager](https://github.com/fairyglade/ly)
- [LightDM](https://github.com/canonical/lightdm)

If you know what is a display manager, and you don't want it, you can install:
```bash
sudo pacman -S xorg-xinit
```
The configuration for xinit is included in .config files so it will be added automatically, but you have to check the README files in [init_session](https://github.com/pzeadrian/dotfilesArch/tree/main/2_DesktopGUI/init_session) and [zsh](https://github.com/pzeadrian/dotfilesArch/tree/main/2_DesktopGUI/zsh) for applying these settings.

Also, I recommend you to install an AUR helper, because some packages are going to be downloaded from that repository.
You could try:
- [pikaur](https://github.com/actionless/pikaur)
- [yay](https://github.com/Jguer/yay)

Now, let's go, first, you would need some deendencies.
```bash
sudo pacman -S bspwm sxhkd alacritty dmenu feh picom git zsh --noconfirm
```

Now change your shell to /bin/zsh:
```bash
chsh
```

Also, you will need to install an AUR helper, I recommend [YAY](https://github.com/Jguer/yay), and then using it, install:
```bash
pikaur -S polybar
```

For copying my config, you should do:
```bash
mkdir Documents
mkdir .config
git clone https://github.com/pzeadrian/dotfilesArch
cd Documents/dotfilesArch/2_DesktopGUI
./configureBSPWM
```

The polybar installation will install another Window Manager called i3 by default. For remove it:
```bash
sudo pacman -Rns i3-wm
sudo pacman -Sc
```
