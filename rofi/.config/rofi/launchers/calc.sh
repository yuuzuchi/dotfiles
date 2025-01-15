#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers"
theme='style-wal-calc'

## Run and save output to clipboard
output=$(rofi -show calc -modi calc -no-show-match -no-sort -theme ${dir}/${theme}.rasi | sed 's/.*= //g' | tr -d '\n')

# Check if output is not empty
if [ -n "$output" ]; then
    echo "$output" | wl-copy
    wl-paste -p
fi
