#!/bin/bash 
case $1 in 
    "HD") echo "High Distinction";; 
    "D") echo "Distinction";; 
    "CR") echo "Credit";; 
    "C") echo "Pass";; 
    "N") echo "Fail";; 
    *) echo "Unknown Grade";; 
esac 
exit 