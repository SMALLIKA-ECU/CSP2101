#!/bin/bash
#This script creates a folder with a secret password
#Author: Sachini
#Prompt the user to enter folder name and password

read -p "What is the folder name: " folderName
echo "FolderName: $folderName"
echo
read -s -p "Type the secret password: " SPASS
echo
#Save users password in file called secret.txt
echo "Secret password: $SPASS" > secret.txt 
echo