#!/bin/bash
read -p "What is your name?" name
read -p "What is your username?" USER
[ "$name" = 'Frank' -a "$USER" = 'root' -o ! "$1" = 'apples' ] && echo "Welcome" && exit 0
echo "acces denied" ; exit 1
