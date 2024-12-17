#!/bin/bash

if [[ $1 == "" ]]; then
	echo "Must provide a file path!"
	exit 1
fi

exec {FD}< $1

read -u $FD riga

echo $riga
./inverti2.sh $1
wait
echo $riga
