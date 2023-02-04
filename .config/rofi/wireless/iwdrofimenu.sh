#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Minimalistic WiFi network chooser for iwd
dir="$HOME/.config/rofi/launchers/type-2"
theme='style-1'

## Run
rofi \
    -show wifi \
    -modi "wifi:iwdrofimenu" \
    -theme ${dir}/${theme}.rasi
