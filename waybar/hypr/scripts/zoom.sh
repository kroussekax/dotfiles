#!/bin/bash

OUTPUT="eDP-1" # Replace with your output name
DEFAULT_SCALE=1
ZOOM_SCALE=1.5

CURRENT_SCALE=$(swaymsg -t get_outputs | jq -r ".[] | select(.name==\"$OUTPUT\") | .scale")

if (( $(echo "$CURRENT_SCALE == $DEFAULT_SCALE" | bc -l) )); then
    swaymsg output $OUTPUT scale $ZOOM_SCALE
else
    swaymsg output $OUTPUT scale $DEFAULT_SCALE
fi
