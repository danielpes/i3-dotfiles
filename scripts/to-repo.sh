#!/bin/bash

# lighdm-gtk-greeter
sudo cp /etc/lightdm/ ../lightdm-gtk-greeter.conf

# Xresources
sudo cp $HOME/.Xresources ../Xresources

# .config/
cd ../dot_config
for d in ./*/ ; do
    dirname=`basename "$d"`
    source="$HOME/.config/$dirname"
    target=$PWD
    echo "===> Copying config configs for $dirname from $source to $target"
    cp -r $source $target
    echo ""
done
for f in ./*.*; do
    filename=`basename "$f"`
    source="$HOME/.config/$filename"
    target=$PWD
    echo "===> Copying config file $filename from $source to $target"
    cp $source $target
    echo ""
done