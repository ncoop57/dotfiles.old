#!/bin/bash

res=$(echo "logout|reboot|shutdown" | rofi -sep "|" -dmenu -i -p "Power Menu" -config ~/.config/rofi/power_menu.rasi)

if [ $res = "logout" ]; then
  i3-msg exit
fi

if [ $res = "reboot" ]; then
  reboot
fi

if [ $res = "shutdown" ]; then
  poweroff
fi
