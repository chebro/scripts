#! /bin/bash

# Set backlight brightness i/p (1, 100)

MAX=$(cat /sys/class/backlight/*/max_brightness)
MAX=$((MAX / 100))

echo "$(($1 * MAX))" | sudo tee /sys/class/backlight/*/brightness > /dev/null

