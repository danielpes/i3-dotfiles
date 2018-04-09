#!/bin/bash

mkdir $HOME/Pictures
mkdir $HOME/Downloads
mkdir $HOME/Videos
sudo rm /etc/lightdm

echo "zsh -l -c i3" > $HOME/.xinitrc
mkdir $HOME/.tmp
echo "TMPDIR=$HOME/.tmp/" | sudo tee --append /etc/yaourtrc

# System upgrade
echo "===> Upgrading system..."
sudo pacman --noconfirm -Syu

# Base packages
echo "===> Installing base packages..."
yaourt -S --needed --noconfirm \
    gtk3 \
    i3-gaps \
    i3lock-color \
    lightdm-gtk-greeter \
    rxvt-unicode \
    xorg-apps \
    xorg-server \
    xorg-xinit \
    zsh \

# Install Oh-My-Zsh
echo "===> Installing Oh-My-Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Press any key to continue..."
read

yaourt -S --needed --noconfirm  zsh-pure-prompt

# Configure zshrc and zprofile
echo "===> Configuring zsh and zprofile..."
cp ../.zshrc $HOME/.zshrc
sudo cp ../zprofile /etc/zsh/zprofile

sudo systemctl enable lightdm.service
sleep 1
sudo reboot
