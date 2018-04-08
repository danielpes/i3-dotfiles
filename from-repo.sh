#!/bin/bash
cd dot_config
for d in ./*/ ; do
    dirname=`basename "$d"`
    echo "===> Loading config dir for $dirname..."
    target="$HOME/.config/"
    cp -r $d $target
done