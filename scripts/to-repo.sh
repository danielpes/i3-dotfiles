#!/bin/bash

# gtk-2.0 theming
cp $HOME/.gtkrc-2.0 ../gtkrc-2.0

# lightdm-gtk-greeter
sudo cp /etc/lightdm/lightdm-gtk-greeter.conf ../lightdm-gtk-greeter.conf

# Xresources
sudo cp $HOME/.Xresources ../Xresources

# bin/
cp $HOME/bin/* ../bin/

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
for f in ./*; do
    if [ ! -f "$f" ]; then 
        continue
    fi
    filename=`basename "$f"`
    source="$HOME/.config/$filename"
    target=$PWD
    echo "===> Copying config file $filename from $source to $target"
    cp $source $target
    echo ""
done