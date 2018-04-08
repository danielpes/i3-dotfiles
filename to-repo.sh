#!/bin/bash
cd dot_config
for d in ./*/ ; do
    dirname=`basename "$d"`
    echo "===> Saving config dir for $dirname..."
    source="$HOME/.config/$dirname"
    cp -r $source ./
done