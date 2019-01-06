#!/bin/bash
HISTFILE=~/.bash_history
set -o history

eval $(history | awk '{$1=""; print $0}' | rofi -dmenu -i -p "Bash History" -config ~/.config/rofi/history.rasi)
