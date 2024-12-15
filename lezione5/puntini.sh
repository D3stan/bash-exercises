#!/bin/bash

if [[ -z $1 ]] || (( $1 < 1 )); then
	echo "Number not valid"
	exit
fi

for (( i = $1 ; i > 0 ; i-- )); do
	echo -n ". $$"
	sleep 1
done
