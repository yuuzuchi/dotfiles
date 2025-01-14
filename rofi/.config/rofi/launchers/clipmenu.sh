#!/usr/bin/env bash

# yay -S cliphist

dir="$HOME/.config/rofi/launchers"
theme='style-wal-mini'

rofi -modi clipboard:$HOME/scripts/cliphist-rofi-img.sh \
    -show clipboard -show-icons \
    -theme $dir/$theme.rasi \
    -display-columns 2

