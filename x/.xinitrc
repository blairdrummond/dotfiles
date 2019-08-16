#!/usr/bin/env bash

export GTK_IM_MODULE=xim
export XMODIFIERS=@im=none
export QT_IM_MODULE=xim
# export PATH=/home/blair/xbin:$PATH

mesg n

xset +fp ~/.local/share/fonts &
xset fp rehash &

# xbindkeys
xmodmap ~/.Xmodmap &

xrdb -load ~/.Xresources 
xsetroot -cursor_name left_ptr &

start-pulseaudio-x11 &

(cd ~/desk && daemon &)

{
    # xautolock -time 7 -locker block-maybe -nowlocker block-maybe -detectsleep -corners 000+ -cornerdelay 3 &
    xset s 180 120
    xss-lock -l ~/bin/block &
    # xscreensaver -no-splash &
    (bmail check &)
    (dunst &)
    # (panel-backend &)
    # (panel-run &)
    # (xcompmgr &)

    # rss-feed &
    (watch-battery &)
    sxhkd &
    exec herbstluftwm --locked
    # exec fvwm
}

# {
#     (bmail check &)
#     exec startxfce4
# }

# exec gnome-session
# exec mate-session
