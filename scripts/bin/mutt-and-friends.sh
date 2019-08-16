#!/bin/sh

tmux new-session -d -s organization -n 'mutt' 'mutt'

tmux new-window -t organization:1 -n ranger   ranger
tmux new-window -t organization:2 -n calendar 'plan cal loop'
tmux new-window -t organization:3 -n todo     'client ~/desk/.todo.org'
tmux new-window -t organization:4 -n remind   'client ~/desk/remind/anomalous.rem'

tmux select-window -t organization:0
st -g 100x65 -e tmux attach-session -t organization
