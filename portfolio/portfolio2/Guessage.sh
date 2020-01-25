#!/bin/bash
#Author: Sachini Mallikarachchi (10518627)
#Task 1 - Script to Guess Age

#Prompt the user to guess an age between 20 and 70
echo -e "Guess an age number between 20 and 70\n"

#Genete random age 
(( answer = 20 + RANDOM % 70 ))

#Play the game
while (( guess != answer )); do
    read -p "Enter guess: " guess
    if (( guess < answer )); then
        echo "Too Low"
    elif (( guess > answer )); then 
        echo "Too High" 
    fi
done
echo -e "Your guess is correct!" 

