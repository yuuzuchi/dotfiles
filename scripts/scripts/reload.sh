#!/bin/bash

# reloads my apps after wal update

killall waybar
#pywalfox update
swaync-client -rs
swaync-client -R
waybar

