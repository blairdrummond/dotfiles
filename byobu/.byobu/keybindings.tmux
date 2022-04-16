set -g prefix F12
unbind-key -n C-a

set -g default-shell /usr/bin/zsh
set -g default-command /usr/bin/zsh

bind-key -n M-o display-panes \; split-window -h -c "#{pane_current_path}"
bind-key -n M-u display-panes \; split-window -v -c "#{pane_current_path}"

bind-key -n M-S-o display-panes \; swap-pane -s :. -t :.- \; select-pane -t :.-
bind-key -n M-S-u display-panes \; swap-pane -s :. -t :.+ \; select-pane -t :.+

bind-key -n M-n new-window -c "#{pane_current_path}" \; rename-window "-"
bind-key -n M-m new-session \; rename-window "-"

bind-key -n M-p copy-mode
bind-key -n M-v paste-buffer
