#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Missing one argument: the URL to process."
    exit 1
fi

if [ $# -gt 1 ]; then
    echo "Too many arguments."
    exit 2
fi

EMAIL_REGEX='([a-z0-9]+\.?)+@[a-z0-9]+\.[a-z]{2,}'

echo "$1" | grep $EMAIL_REGEX $1

#wget -q -O - $1
