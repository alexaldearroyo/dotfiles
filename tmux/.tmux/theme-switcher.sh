#!/bin/bash

mode=$(defaults read -g AppleInterfaceStyle 2>/dev/null)

if [ "$mode" = "Dark" ]; then
  tmux set -g status-bg "#282c33"
  tmux set -g status-fg "#6F9FED"
  tmux set -g window-status-style "fg=#7f849c,bg=#282c33"
  tmux set -g window-status-current-style "fg=#6F9FED,bg=#282c33"
else
  tmux set -g status-bg "#fbf6e4"
  tmux set -g status-fg "#8C7D71"
  tmux set -g window-status-style "fg=#DCC8A3,bg=#fbf6e4"
  tmux set -g window-status-current-style "fg=#8C7D71,bg=#fbf6e4"
fi

tmux refresh-client -S
