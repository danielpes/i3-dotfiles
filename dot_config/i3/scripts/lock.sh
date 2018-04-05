#!/bin/bash
#credits (with some modifications): https://github.com/rokyfox/i3ConfigFiles

cd "/home/daniel/.config/i3/scripts/"

import -silent -window root lock.png;
notify-send --urgency low "Locking..."
convert lock.png -scale 25% -blur 0x20 -scale 400% lock.png;
#convert lock.png -scale 10% -scale 1000% lock.png;
composite -gravity center pad.png lock.png lock.png;

i3lock $1 -i lock.png \
    --veriftext="" \
    --wrongtext="" \
    --radius=130 \
    --indicator \
    --force-clock \
    --modsize=1 \
    --datesize=16 \
    --timesize=40 \
    --datestr="%A, %d %b %Y" \
    --textcolor=4b5162ff \
    --timecolor=4b5162ff \
    --datecolor=4b5162ff \
    --ringcolor=4b516295 \
    --keyhlcolor=383c4a85 \
    --bshlcolor=dc322f95 \
    --insidecolor=00000000 \
    --insidevercolor=00000000 \
    --ringvercolor=4b516295 \
    --insidewrongcolor=00000000 \
    --ringwrongcolor=dc322f95 \
    --linecolor=4b516295 \
    --separatorcolor=4b516295;
