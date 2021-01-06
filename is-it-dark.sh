#! /bin/bash

# Check if it's dark outside

if [ $(date +%p) = AM ] && [ $(date +%H) -lt 7 ]; then
    echo 1
elif [ $(date +%p) = PM ] && [ $(date +%H) -lt 19 ]; then
    echo 1
else
    echo 0
fi

