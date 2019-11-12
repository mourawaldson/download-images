#!/bin/bash
while read line; do
    if ! [ -f $file ]; then
        do curl -O $line
    fi
done < source.txt
