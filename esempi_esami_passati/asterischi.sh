#!/bin/bash

offset=0
count=0
totalCount=0

#ls /user/include/ | while read file; do
#ls | while read file; do 
for file in *; do
	#echo $file;
	(( offset = ${#file} - 2 ))
	if [[ ${file:${offset}:2} == "sh" ]]; then
		while read line; do
			#echo " - $line"
			(( totalCount = totalCount + 1 ))
			if [[ $line == *"*"* ]]; then
				(( count = count + 1 ))
			fi
		done < "./${file}"
	fi
done

echo $count
echo $totalCount 1>&2
