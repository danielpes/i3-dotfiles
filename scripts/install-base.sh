#!/bin/bash

ZDOTDIR=$HOME/.config/zsh/

sudo rm /etc/lightdm
sudo chown daniel:users /usr/share/pixmaps/

mkdir $HOME/Pictures
mkdir $HOME/Downloads
mkdir $HOME/Videos
mkdir $HOME/.tmp
mkdir -p $ZDOTDIR
echo "TMPDIR=$HOME/.tmp/" | sudo tee --append /etc/yaourtrc

# System upgrade
echo "===> Upgrading system..."
yaourt --noconfirm -Syu

# Base packages
echo "===> Installing base packages..."
yaourt -S --noconfirm --needed $(< ../packages/base.list)

# Install Oh-My-Zsh
echo "===> Installing Oh-My-Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Press any key to continue..."
read

yay -S --needed --noconfirm  zsh-pure-prompt

# Configure zshrc and zprofile
echo "===> Configuring zsh and zprofile..."
cp -r ../config/zsh/. $ZDOTDIR

sleep 2
echo "Press any key to reboot..."
read

sudo reboot
