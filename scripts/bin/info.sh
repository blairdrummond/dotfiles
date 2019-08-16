#!/bin/sh
#
# info.sh - displays info about wm, font, gtk theme
# copied from z3bra's blog
#


# c00=$'\e[0;30m'
# c01=$'\e[0;31m'
# c02=$'\e[0;32m'
# c03=$'\e[0;33m'
# c04=$'\e[0;34m'
# c05=$'\e[0;35m'
# c06=$'\e[0;36m'
# c07=$'\e[0;37m'
# c08=$'\e[1;30m'
# c09=$'\e[1;31m'
# c10=$'\e[1;32m'
# c11=$'\e[1;33m'
# c12=$'\e[1;34m'
# c13=$'\e[1;35m'
# c14=$'\e[1;36m'
# c15=$'\e[1;37m'

# f0=$'\e[1;30m'
# f1=$'\e[1;37m'
# f2=$'\e[0;37m'



c0=$(tput setaf 0)
c1=$(tput setaf 1)
c2=$(tput setaf 2)
c3=$(tput setaf 3)
c4=$(tput setaf 4)
c5=$(tput setaf 5)
c6=$(tput setaf 6)
c7=$(tput setaf 7)
c8=$(tput setaf  8)
c9=$(tput setaf  9)
c10=$(tput setaf 10)
c11=$(tput setaf 11)
c12=$(tput setaf 12)
c13=$(tput setaf 13)
c14=$(tput setaf 14)
c15=$(tput setaf 15)


f0=$(tput setaf 7)
f1=$(tput setaf 7)
f2=$(tput setaf 7)

kernel=$(uname -rmo)
# system=$(sed 's/\s*[\(\\]\+.*$//' /etc/issue)

if [ -n $DISPLAY ]; then
    WM=$(xprop -root _NET_SUPPORTING_WM_CHECK | awk '{print $5}')
    # wmname=$(xprop -id ${WM//* } _NET_WM_NAME | sed -re 's/.*= "(.*)"/\1/')
    wmname=$(xprop -id $WM _NET_WM_NAME | sed -re 's/.*= "(.*)"/\1/')
    fon=$(xrdb -query | sed -n 's/^UR.*\*font:\s*//p')
    if expr "$fon" : "xft.*" > /dev/null; then
        termfn=$(echo $fon | awk -F ':' '{print $2}')
    else
        termfn=$(echo $fon | sed -re 's/^-\w+-(\w+)-.*/\1/')
    fi
    [ -f ~/.gtkrc-2.0 ] &&   systfn=$(sed -n 's/^.*font.*"\(.*\)".*$/\1/p'    ~/.gtkrc-2.0)
    [ -f ~/.gtkrc-2.0 ] && gtktheme=$(sed -n 's/^gtk-theme.*"\(.*\)".*$/\1/p' ~/.gtkrc-2.0)
    [ -f ~/.gtkrc-2.0 ] &&    icons=$(sed -n 's/^.*icon.*"\(.*\)".*$/\1/p'    ~/.gtkrc-2.0)
else
    wmname="none"
    termfn="none"
    systfn="none"
fi

pkgnum=$(xbps-query -l | wc -l)
birthd="$(tune2fs -l /dev/sda1 2>/dev/null | sed '1q' | awk '{print $3}' | sed 's/[()]//g')"
colortheme=$(cat ~/.themes/colortheme)

# ${f1}system font ${f0}.. ${f2}$systfn
# clear

cat << EOF



    ${c1}1  ▉▉  | ${f1}OS ${f0}........... ${f2}Void Linux
    ${c9}9    ▉▉| ${f1}age ${f0}.......... $f2$birthd
    ${c2}2  ▉▉  | ${f1}kernel ${f0}....... $f2$kernel
    ${c10}10   ▉▉| 
    ${c3}3  ▉▉  | ${f1}packages ${f0}..... $f2$pkgnum
    ${c11}11   ▉▉| 
    ${c4}4  ▉▉  | ${f1}wm ${f0}........... $f2$wmname
    ${c12}12   ▉▉| ${f1}shell ${f0}........ $f2$SHELL
    ${c5}5  ▉▉  |
    ${c13}13   ▉▉| ${f1}terminal ${f0}..... $f2$TERM
    ${c6}6  ▉▉  | ${f1}term font ${f0}.... ${f2}$(xrdb -query | grep ".font" | sed '1q' | awk '{print $2}')
    ${c14}14   ▉▉| 
    ${c7}7  ▉▉  | ${f1}colortheme ${f0}... $f2$colortheme
    ${c15}15   ▉▉| 



EOF

# echo
# echo "             ${c02}    « ${c01} Tasks ${c02} »                   "
# echo "${c11}───────────────────────────────────────────────${f1}"
# soon | head -n -1 | tail -n +4 2> /dev/null
# calcurse -Q | sed 's/\(.*\)/        \1/g'
# 
# 
# 
# echo
# echo
# echo
# echo "             ${c02}     « ${c01} Email ${c02} »                   "
# echo "${c11}───────────────────────────────────────────────${f1}"
# echo "                $(mail_get)"   2> /dev/null
# 
# 
# if [[ $(mpc | grep playing) != "" ]]; then
# 
#     echo
#     echo
#     echo
#     echo "             ${c02}     « ${c01} Music ${c02} »                   "
#     echo "${c11}───────────────────────────────────────────────${f1}"
#     echo "        $(mpc | head -n1)"   2> /dev/null
# 
#     echo
#     echo
#     echo
#     echo
# 
# fi





	
# ▀	
# ▁	
# ▂	
# ▃	
# ▄	
# ▅	
# ▆	
# ▇	
# 
# █	
# 
# ▉	
# ▊	
# ▋	
# ▌	
# ▍	
# ▎	
# ▏
# 	
# ▐	
# ░	
# ▒	
# ▓	
# ▔	
# ▕	
# ▖	
# 
# ▗	
# ▘	
# 
# ▙	
# 
# ▚	
# 
# ▛	
# 
# ▜	
# 
# ▝	
# 
# ▞	
# 
# ▟
# 





#  «

#  »

#  ░

#  ▒

#  ▓

#  │

#  ┤

#  ╣

#  ║

#   ╗

#  ╝

#  ┐

#  └

#  ┴

#  ┬

#  ├

#  ─

