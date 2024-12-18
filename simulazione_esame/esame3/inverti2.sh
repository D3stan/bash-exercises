#!/bin/bash

if [[ $1 == "" ]]; then
	echo "Must provide a file path!"
	exit 1
fi

if [[ -z $FD ]]; then
	exec {FD}< $1
	echo created
else
	
fi

read -u $FD riga

if (( $? == 0 )); then
	./inverti2.sh $1
fi

echo $riga
