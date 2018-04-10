#!/bin/bash

# lighdm-gtk-greeter
sudo cp ../lightdm-gtk-greeter.conf /etc/lightdm/

# Xresources and xsession
sudo cp ../Xresources $HOME/.Xresources
sudo cp ../xsession $HOME/.xsession

# $HOME/bin/
mkdir -p $HOME/bin/
cp ../bin/* $HOME/bin/

# .config/
cd ../config
cp ./* $HOME/.config/
for d in ./*/ ; do
    dirname=`basename "$d"`
    echo "===> Loading config dir for $dirname..."
    target="$HOME/.config/"
    cp -r $d $target
done

# gtk theming
cp ../gtkrc-2.0 $HOME/.gtkrc-2.0
sudo ln -s $HOME/.gtkrc-2.0 /etc/gtk-2.0/gtkrc
sudo ln -s $HOME/.config/gtk-3.0/settings.ini /etc/gtk-3.0/settings.ini
