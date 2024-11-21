#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "error: number of arguments is not 2"
    exit 1
fi

if [ ! -f "$1" ]; then
    touch "$1"
    if [ $? -ne 0 ]; then
        echo "couldn't create file"
        exit 1
    fi
fi

echo "$2" > $1



