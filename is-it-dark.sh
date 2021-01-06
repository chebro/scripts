#! /bin/bash

if [ $(date | cut -c 21) = A ] && [ $(date +"%H") -lt 7 ]; then
    echo 1
elif [ $(date | cut -c 21) = P ] && [ $(date +"%H") -lt 19 ]; then
    echo 1
else
    echo 0
fi

