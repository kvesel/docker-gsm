#!/usr/bin/env bash

SESSION="Scanning"
WINDOW="${SESSION}:0"
PANE="${WINDOW}.1"

tmux new-session -d -s ${SESSION}
tmux split-window -vb -p 50 "python3 simple_IMSI-catcher.py"
tmux select-pane -t ${PANE}
tmux select-window -t ${WINDOW}
tmux attach-session -t ${SESSION}
