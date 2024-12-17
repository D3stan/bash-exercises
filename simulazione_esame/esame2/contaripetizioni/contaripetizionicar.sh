#!/bin/bash

if [[ $1 == "" || -z $1 ]]; then
	echo "Invalid input!"
	exit 1
fi

for (( i=0 ; i < ${#1} ; i++ )); do
	echo ${1:i:1}
done | sort | uniq -c | sed 's/^ *//'
