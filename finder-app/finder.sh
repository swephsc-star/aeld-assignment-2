#!/bin/sh
# assignment 1
# Author: Philip Choi

set -e
set -u


if [ $# -ne 2 ]
then
	echo "not all arguments are provided"
	exit 1

else
	filesdir=$1
	searchstr=$2

	if [ ! -d "$filesdir" ]
	then
	       	echo "incorrect directory"
		exit 1	       
	fi

	X=$(find $filesdir -type f | wc -l)
	Y=$(grep -r "$searchstr" "$filesdir" | wc -l)
	echo "The number of files are $X and the number of matching lines are $Y"
fi

