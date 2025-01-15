#!/bin/bash

# reloads my apps after wal update

killall -SIGUSR2 waybar
pywalfox update
swaync-client -C
swaync-client -rs
swaync-client -R


