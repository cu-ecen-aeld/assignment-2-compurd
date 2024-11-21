#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "2 arguments have to be passed to script"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "$1 is not a directory"
    exit 1
fi

N_FILES="$(find $1 -type f | wc -l)"
N_LINES="$(grep -r "$2" $1 | wc -l)"
echo "The number of files are ${N_FILES} and the number of matching lines are ${N_LINES}" 
