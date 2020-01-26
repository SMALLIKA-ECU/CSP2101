#!/bin/bash
#Author: Sachini Mallikarachchi (10518627)
#Task 3 - Using regex in scripts
#This script will obtain the lines from the rectangle.txt file that are red in colour and have an area > 100

grep -i "Red$" rectangle.txt | awk ' BEGIN {FS=","} $4>100 { print $0 } End{ print "Done" } '
