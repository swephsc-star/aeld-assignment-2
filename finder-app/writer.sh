#!/bin/sh
# assignment 1
# Authour: Philip Choi

set -e
set -u

if [ $# -ne 2 ]
then
	echo "not all arguments are provided"
	exit 1
else
	writefile=$1
	writestr=$2
	dir=$(dirname $1)
	file=$(basename $1)
	
	$(mkdir -p $dir)

	$(echo $2 > $1)

	if [ ! $(find $dir/ -type f -name $file)  ]
	then
		echo "file couldn't be created."
		exit 1
	fi
fi

