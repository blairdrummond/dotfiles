#!/bin/bash

[ -d /tmp/.colors ] || mkdir /tmp/.colors

convert "$1" -size 60x60   \
   xc:"rgb(18, 27, 35)"    \
   xc:"rgb(100, 142, 164)" \
   xc:"rgb(51, 84, 110)"   \
   xc:"rgb(32, 53, 74)"    \
   xc:"rgb(47, 46, 43)"    \
   xc:"rgb(83, 85, 76)"    \
   xc:"rgb(145, 143, 128)" \
   xc:"rgb(106, 141, 140)" \
   xc:"rgb(62, 84, 81)" /tmp/.colors/out.jpg
    
{
	i=0
    for f in $(ls /tmp/.colors/* | sort); do
        colors[$i]="$(convert $f -resize 1x1 text:- | awk 'NR == 2 {print $3}')"
		((i++))
    done
} 

colors[0]="$(convert /tmp/.colors/out-1.jpg -negate -resize 1x1 text:- | awk 'NR == 2 {print $3}')"

cat <<EOF
! -- Title:   $1
! -- Author:  blair
! -- Created: $(date +'%Y-%m-%d')

#define bg    ${colors[2]}
#define fg    ${colors[1]}

#define blk   ${colors[2]}
#define bblk  ${colors[2]}

#define wht   ${colors[1]}
#define bwht  ${colors[1]}

#define red   ${colors[3]}
#define bred  ${colors[3]}

#define ylw   ${colors[4]}
#define bylw  ${colors[4]}

#define grn   ${colors[5]}
#define bgrn  ${colors[5]}

#define blu   ${colors[6]}
#define bblu  ${colors[6]}

#define cyn   ${colors[7]}
#define bcyn  ${colors[7]}

#define mag   ${colors[8]}
#define bmag  ${colors[8]}

EOF
