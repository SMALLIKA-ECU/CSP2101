#!/bin/bash
#This script creates a simple registration app
#Author: Sachini Mallikarachchi
echo 'Please enter your credentials'
echo -e '\n'
echo -n 'Enter your name: '
read name 
echo -n 'Enter your DoB: '
read birth
echo 'Choose a colour Green, Red, or Yellow.'
echo 'Enter G if its Green'
echo 'Enter R if its Red'
echo 'Enter Y if its Yellow'
read -p 'Enter your favourite colour: ' colour
echo -e '\n'
    case $colour in 
        "G")
            echo -e "\033[32m$name\033[0m"
            echo -e "\033[32m$birth\033[0m";;
        "R")
            echo -e "\033[31m$name\033[0m"
            echo -e "\033[31m$birth\033[0m";;
        "Y")
            echo -e "\033[1;33m$name\033[0m"
            echo -e "\033[1;33m$birth\033[0m";;
        *)
            echo "Invalid Input";;
    esac
    exit 0
    