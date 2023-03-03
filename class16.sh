#!/bin/bash

# Argument -> is declared when you run a script

#1
# echo "You entered the argument: $1, $2 and $3"

#2
#lines=$(ls -lh $1 | wc -l)
#echo "You have $((lines-1)) objects in the $1 directory."

# the first line  doesnt count because is the total. Check it out:
# ls -l /etc | head 

lines=$(ls -lh $1 | wc -l)

if [ $# -ne 1 ]
then
	echo "This script needs one directory path passed to it."
	echo "Please try again"
	exit 1
fi

echo "You have $((lines-1)) objects in the $1 directory."
