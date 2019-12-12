#!/bin/bash
#This script creates a menu
#Author: Sachini Mallikarachchi
echo "===Menu===" #print the title called menu
ehco -e '\n' #print a new lline
#display the options that user can select
echo "Enter 1 to Register User"
echo "Enter 2 to User Details"
echo "Enter 3 to Edit User"
echo "Enter 4 to Save User"
echo "Enter 5 to Change Password"
echo "Enter 6 to Print Report"
echo "Enter q to Exit"
echo -e '\n' #print a new line 
#promt the user to select the option
read -p "Enter your selection: " answer
echo -e '\n' #print a new line 
    #get the selection and print output
    case $answer in 
        "1")
            #print output in the red colour
            echo -e "\033[31mRegister User\033[0m";;
        "2")
            #print output in the green colour
            echo -e "\033[32mUser Details\033[0m";;
        "3")
            #print output in the brown colour
            echo -e "\033[33mEdit User\033[0m";;
        "4")
            #print output in the blue colour
            echo -e "\033[34mSave User\033[0m";;
        "5")
            #print output in the purplr colour
            echo -e "\033[35mChange Password\033[0m";;
        "6")
            #print output in the cyan colour
            echo -e "\033[36mPrint Report\033[0m";;
        "q")
            #print output in the white colour
            echo -e "\033[37mHave a nice day\033[0m";;
    esac
    exit 0