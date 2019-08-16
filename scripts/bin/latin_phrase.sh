#!/bin/sh

# Look up latin phrases interactively
# 
#     Requires dmenu
# 

PHRASES="$HOME/.latin_phrases.txt"



# You can also use rofi instead of dmenu
sel=$(awk -F ',,,,,' '{print $1}' $PHRASES | grep -v "^$" | tr '[:upper:]' '[:lower:]' | dmenu -i -p "phrase:")

if test -n "$sel" && grep -iq "$sel" $PHRASES; then
    grep -i "$sel" $PHRASES | awk -F ',,,,,' '{print $1; print "\nMeaning\n=======\n"; print $2; print "\nNotes\n=====\n"; print $3; print "\n\n"}' | fold -s -w 80  > /tmp/latin_tmp

    # Use your terminal of choice
    st    -t latin_lookup -e less /tmp/latin_tmp
    # urxvt -n latin_lookup -e less /tmp/latin_tmp
    # xfce4-terminal -T latin_lookup -e "less /tmp/latin_tmp" 2> /dev/null
fi
