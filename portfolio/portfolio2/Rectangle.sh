#!/bin/bash
#Author: Sachini Mallikarachchi (10518627)
#Task 2 - Using sed
#This script will obtain the dimensions of rectangles from the rectangle.txt file

awk 'BEGIN {FS=","}
    { print "Name: ", $1, "Height: ", $2, "Width: ", $3, "Area: ", $4, "Colour: ", $5 }
    END { print "Done" }' ./rectangle.txt
    