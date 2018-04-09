#!/bin/bash
target_file=/usr/share/pixmaps/wallpaper.jpg
sudo wget "https://source.unsplash.com/1920x1080/daily/?grayscale" -O $target_file
nitrogen --set-scaled $target_file
