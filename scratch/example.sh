#!/bin/bash
read -p "What is your name?" name
read -p "What is your username?" USER
["$name"= 'Frand' -a "$USER"= 'root' -o ! "$1" = 'abc'] && echo "Welcome" && exit 0
echo "NO" ; exit 1
