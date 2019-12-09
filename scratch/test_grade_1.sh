#!/bin/bash
read -p "What is your grade?" grade
test $grade -gt '50' && echo "Pass" && exit 0
echo "Fail" ; exit 1
