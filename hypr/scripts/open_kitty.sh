#!/bin/bash

# Prompt user for size option using wofi
size=$(echo -e "small\nmedium\nlarge\nbox" | wofi --dmenu -p "Choose size:")

# Validate input
if [[ ! $size =~ ^(small|medium|large|box)$ ]]; then
    notify-send "Invalid input" "Please choose: small, medium, or large"
    exit 1
fi

# Set terminal class based on size
case $size in
    small)
        class_name="kitty_small"
        ;;
    medium)
        class_name="kitty_medium"
        ;;
    large)
        class_name="kitty_large"
        ;;
    box)
        class_name="kitty_box"
        ;;
esac

# Open kitty with the specified class
kitty --class=$class_name
