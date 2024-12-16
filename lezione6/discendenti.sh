#!/bin/bash

if [[ -z $1 ]]; then
	echo "Invalid input"
	exit 1
fi


for (( arg = $1 ; $arg > 0 ; arg-- )) ; do
	./discendenti.sh $(( $1 - 1 )) &
done

wait
echo $1
exit 0
