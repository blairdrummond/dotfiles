#!/usr/bin/env sh
# Ivan c00kiemon5ter V Kanakarakis (http://c00kiemon5ter.github.com)
# for noncopyright information see UNLICENSE file http://unlicense.org/ .
#
# wrapper around iii.sh
# spawns iii in a tmux session named IRC with the channel as title
# accepts all env vars iii accepts plus 't' which sets the terminal

## collect options from env - all opts to iii.sh should be set here
opts="TERM="${t:-st}" m="$m" h="$h" p="$p" n="$n" l="$l" i="$i" s="$s" c="$c""

## spawn a new tmux window named <channel> in a tmux session named IRC
if ! tmux list-sessions | awk -v r=1 '$1 == "IRC:" { exit r=0 } END { exit r }'
then tmux new-session -s IRC -n "${c:-$s}" "$opts iii"
elif ! tmux list-windows -t IRC | awk -v r=1 -v m="${c:-$s}" '$2 ~ "^"m"[*!-]*$" { exit r=0 } END { exit r }'
then tmux new-window -t IRC -n "${c:-$s}" -d "$opts iii"
fi
