#!/bin/bash
#Author: Sachini Mallikarachchi (10518627)
#Task 1 -Script to Guess Age

#Function to generate a random age between 20 and 70
Generate_random()
{
    (( answer = 20 + RANDOM % 70 ))
}

#Function to play the game
Play_game()
{
    while (( guess != answer )); do
        read -p "Enter guess: " guess
        if (( guess < answer )); then
            echo "Too Low"
        elif (( guess > answer )); then
            echo "Too High" 
        fi 
    done
    echo -e "Your guess is correct!"
}

Generate_random
#Prompt user to guess age between 20 and 70
echo -e "Guess an age number between 20 and 70\n"
Play_game
