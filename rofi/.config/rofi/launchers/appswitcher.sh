#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers"
theme='style-wal'

## Run
rofi \
    -show window \
    -theme ${dir}/${theme}.rasi
