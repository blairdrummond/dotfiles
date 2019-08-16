#!/bin/sh

# quote-wall.sh (file | stdin)
# example:
#
# echo "Be right back. Getting coffee." | quote-wall.sh

####   For use with https://github.com/Duncaen/slock
####    # duncaen slock.c
####	if(!image) {
####		die("slock: unable to load image.\n");
####	}

####    # my recommended change
####	if(!image) {
####	    fprintf(stderr, "slock: unable to load image.\n");
####	}

font="Crimson-Text-Regular"
name="Blair"

[ -f "$1" ] && FILE=$1 || FILE="-"

message="$(cat ${FILE} | fold -s -w 80)"
justify="$(echo ${message}  | sed '1q' | sed 's/./ /g')"
formatted="${message} \n\n   $justify  — $name"

convert \
	-background "#ededed" \
	-fill black \( -font $font \
	               -pointsize 25 \
	               label:"$formatted" \) \
				   -gravity Center \
				   -extent 1920x1080 \
				   -quality 95 \
				   /tmp/.lockscreen.jpg

slock -i /tmp/.lockscreen.jpg 
