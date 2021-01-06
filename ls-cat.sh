#! /bin/bash

# List all files in $(pwd) and cat them

for i in $(ls $(pwd)); do
    cat $i
done
