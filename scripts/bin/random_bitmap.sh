#!/bin/sh

if test -n "$1"; then
    n=$1
else
    n=8
fi

rand () {
    python -c 's = "0123456789ABCDEF" 
for c in s: 
   for c2 in s: 
       print("{}{}".format(c,c2))' | shuf -n 1
}

row () {
    s=""
    for i in $(seq $n); do
	s="${s}0x$(rand), "
    done
    echo $s
}

echo "#define random_width $n
#define random_height $n
static char random_bits[] = {
    $(row)
    $(row) };" > /tmp/random.xbm

blu=$(xrdb -query  | grep color4 | sed 1q | awk '{print $2}')
bg=$(xrdb -query  | grep background | sed 1q | awk '{print $2}')

xsetroot -bitmap /tmp/random.xbm -bg $bg -fg $blu
