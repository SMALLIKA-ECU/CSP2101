#!/bin/bash
read -p "What is your name? " name
if [ $name = 'Tom' ]; then
    echo "Hello Tom"
    exit 0
else
    echo " Your name isn't Tom";
    exit 1
fi