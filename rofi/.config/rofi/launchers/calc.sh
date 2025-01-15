#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers"
theme='style-wal-calc'

## Run and save output to clipboard
rofi \
    -show calc -modi calc -no-show-match -no-sort \
    -theme ${dir}/${theme}.rasi | sed 's/.*= //g' | tr -d '\n' | wl-copy && wl-paste -p

