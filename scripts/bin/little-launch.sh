#!/bin/sh

# st -g 42x39 -f gohufont-9 -n ignore_this_treemind -e treemind.sh   &
# st -g 42x41 -f gohufont-9 -n ignore_this_vmail   -e plan vmail loop &

st -g 42x80 -f gohufont-9 -n ignore_this_vmail   -e treemail.sh &

# st -g 78x56 -f gohufont-9 -n ignore_this -e plan cal loop &
# st -g 56x42 -f gohufont-9 -n ignore_this -e tmux new-session 'plan todo loop' &
# st -g 46x32 -f gohufont-9 -n ignore_this -e client ~/desk/.todo.org &
# st -g 46x17 -f gohufont-9 -n ignore_this -e client ~/desk/remind/anomalous.rem &
