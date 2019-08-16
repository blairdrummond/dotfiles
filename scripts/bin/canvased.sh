#!/bin/sh

if test -z "$1" || [ ! -f $1 ] ; then
	echo "No valid file Provided" > /dev/stderr
	exit 1
fi

filename=$1
shift

# frame=$(convert $filename -crop 100x20% -resize 1x1 txt: | sed 1d | awk '{print $3}')
frame="#ededed"


if test -n "$@"; then
	message="$@"
else
	message=""
fi


convert -pointsize 10 \
		-size 1920x1080 \( $filename -resize '1536x864>' \) \
		-gravity center \
		-bordercolor "$frame" \
		-background "$frame"  \
		-extent 1920x1080   \
		-gravity South -font Noto-Serif-Thin -pointsize 20 -annotate +0+45 "$message" \
		output.jpg
