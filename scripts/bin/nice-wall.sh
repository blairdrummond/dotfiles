#!/bin/sh

# nice-wall.sh hexcolor outfile

location="$HOME/.noise.png"

help="usage: nice-wall.sh hexcolor outfile

note: make sure that .noise.png is in the right location,
      by default it should be in $HOME/.noise.png
"

[ ! -f $location ] && echo "Noise file not found: $location" && exit 1

test -z "$1" && echo -ne "missing argument\n\n$help" && exit 1
test -z "$2" && echo -ne "missing argument\n\n$help" && exit 1

color="$1"
outfile="$2"

convert \( -size 1920x1080 xc:"$color" \) \
		\( -size 1920x1080 tile:"$location" \) \
		-compose Overlay \
		-gravity center \
		-composite \
		-format png \
		-quality 99 \
		"$outfile"
