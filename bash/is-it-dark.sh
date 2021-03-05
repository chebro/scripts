#! /bin/bash

# Check if it's dark outside

if 	[[ "$(date +%p)" = AM && "$(date +%k)" -lt 7 ]] || [[ "$(date +%p)" = PM && "$(date +%k)" -gt 18 ]]; then
   	echo 1
else
    echo 0
fi

