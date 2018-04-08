#!/bin/bash
#credits (with some modifications): https://github.com/rokyfox/i3ConfigFiles

cd "/home/daniel/.config/i3/scripts/"

rm lock.png
scrot -q 100 lock.png;
notify-send --urgency low "Locking..."
convert lock.png -scale 25% -blur 0x32 -scale 400% lock2.png;
mv lock2.png lock.png
#convert lock.png -scale 10% -scale 1000% lock.png;
#composite -gravity center pad.png lock.png lock.png;

/home/daniel/bin/i3lock -i lock.png \
    --veriftext="" \
    --wrongtext="" \
    --radius=130 \
    --indicator \
    --force-clock \
    --modsize=1 \
    --datesize=34 \
    --timesize=88 \
    --datestr="%A, %d %b %Y" \
    --textcolor=4b5162ff \
    --timecolor=4b5162ff \
    --datecolor=4b5162ff \
    --ringcolor=4b516295 \
    --keyhlcolor=383c4a85 \
    --bshlcolor=dc322f95 \
    --insidecolor=efefef80 \
    --insidevercolor=efefef80 \
    --ringvercolor=4b516295 \
    --insidewrongcolor=efefef80 \
    --ringwrongcolor=dc322f95 \
    --linecolor=4b516295 \
    --separatorcolor=4b516295 \
    --datepos="tx:ty+80";
    #--timepos="ix:iy";
