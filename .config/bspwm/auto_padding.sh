#!/bin/sh

padding=650
bspc subscribe node_add node_remove desktop_focus | while read -r line; do
    lines=$(bspc query -N -n .local.tiled | wc -l)
    if [[ $lines == "0" ]]; then
        :
    elif [[ $lines == "1" ]]; then
        if [[ $padding != 1700 ]]; then
            padding=1700
            bspc config left_padding $padding
            bspc config right_padding $padding
        fi
    elif [[ $lines == "2" ]]; then
        if [[ $padding != 1000 ]]; then
            padding=1000
            bspc config left_padding $padding
            bspc config right_padding $padding
        fi
    else
        if [[ $padding != 650 ]]; then
            padding=650
            bspc config left_padding $padding
            bspc config right_padding $padding
        fi
    fi
done
