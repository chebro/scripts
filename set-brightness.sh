#! /bin/bash

# Set backlight brightness i/p (1, 100)
# NOTE: users in video group must be allowed to change brightness

MAX=$(cat /sys/class/backlight/*/max_brightness)
MAX=$((MAX / 100))

echo "$(($1 * MAX))" | tee /sys/class/backlight/*/brightness > /dev/null

