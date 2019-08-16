#!/bin/bash

GEOM="1920x1080"

[ -f "$1" ] || exit 1

pkill -9 xwinwrap
pkill -9 mpv

xwin="xwinwrap -ni -b -nf -ov -g ${GEOM} -- "

mpv="mpv --wid WID --no-config --keepaspect=yes --loop \
    --no-border --vd-lavc-fast --x11-bypass-compositor=no \
    --gapless-audio=yes --vo=xv --hwdec=auto --really-quiet \
    --name=mpvbg --geometry=${GEOM}+0+0 --speed=1"

$xwin $mpv "$1"  &

# uncomment to set wall on 2nd monitor
#feh --bg-scale /home/shane/Pictures/pixelart/frames/magnify_00000.png

echo -n $! > ${HOME}/.cache/mpvbg.pid
