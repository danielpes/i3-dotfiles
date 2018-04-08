#!/bin/bash

# lighdm-gtk-greeter
sudo cp ../lightdm-gtk-greeter.conf /etc/lightdm/

# Xresources
sudo cp ../Xresources $HOME/.Xresources

# .config/
cd ../dot_config
cp ./* $HOME/.config/
for d in ./*/ ; do
    dirname=`basename "$d"`
    echo "===> Loading config dir for $dirname..."
    target="$HOME/.config/"
    cp -r $d $target
done