#!/bin/sh


IN="eDP1"
EXT="HDMI1"

if ! test -z $1; then
    arg=$1
elif xrandr | grep -q "HDMI1 connected"; then
    arg=monitor
else
    arg=laptop
fi

case $arg in
    "") 
	echo "laptop
monitor
two"
	;;

    laptop)
	xrandr --output HDMI1 --off --output VIRTUAL1 --off --output eDP1 --mode 1920x1080 --pos 0x0 --rotate normal > /dev/null 2>&1
	;;

    monitor)
	xrandr --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off --output eDP1 --off > /dev/null 2>&1
	;;
    two)
	xrandr --output VIRTUAL1 --off --output eDP1 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal > /dev/null 2>&1
	;;
    *)
	xrandr --output HDMI1 --off --output VIRTUAL1 --off --output eDP1 --mode 1920x1080 --pos 0x0 --rotate normal > /dev/null 2>&1
	;;
esac

pgrep herbstluftwm && herbstclient detect_monitors
# chtheme panel init > /dev/null 2>&1 &
