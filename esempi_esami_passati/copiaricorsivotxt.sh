#!/bin/bash

if [[ ! -d $1 ]]; then
	echo "not a valid source directory"
	exit 1
elif [[ ! -d $2 ]]; then
	echo "not a valid destination directory"
	exit 1
fi 

for riga in $( ls $1 ); do
	#if [[ -s $riga && ! -d $riga && $riga == *.txt ]]; then
	if [[ -s "$1/$riga" && ! -d "$1/$riga" && $riga == *.txt ]]; then
		echo $riga
		cp "$1/$riga" $2
	fi
done
