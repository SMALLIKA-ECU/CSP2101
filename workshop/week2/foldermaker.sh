#!/bin/bash 
#Prompt the user to enter a file name they want to create
read -p "type the name of the folder you would like to create: " folderName
#create the file
mkdir "$folderName"
