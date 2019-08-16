#!/bin/sh

sleep 0.1

xdotool key ctrl+l
xdotool key ctrl+c

xsel -p >> ~/desk/.bookmarks
