#!/bin/sh
# assignment 1
# Author: Philip Choi

set -e
set -u

filesdir=$1
searchstr=$2

if [ $# -lt 3 ]
then
	if [ $# -lt 2 ]
	then
		echo "not all arguments are provided"
		exit 1
	fi

	if [ ! -d "$filesdir" ]
	then
	       	echo "incorrect directory"
       		exit 1	       
	fi
	
	X=$(find ../ -type d -name "$filesdir" | wc -l)
	Y=$(grep -r "$searchstr" "../$filesdir" | wc -l)
	echo "The number of files are $X and the number of matching lines are $Y"

else
	echo "total number of arguments should be 2."
	echo "the order of the arguments should be: file directory path, text string"

fi

