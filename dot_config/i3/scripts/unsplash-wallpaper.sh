#!/bin/bash
wget "https://source.unsplash.com/featured/1920x1080/daily/?grayscale" -O ~/Pictures/wallpaper.img
nitrogen --set-scaled ~/Pictures/wallpaper.img
