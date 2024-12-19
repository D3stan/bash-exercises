#!/bin/bash

PREV=""
COUNT=1

sort cadutevic.txt -k 4 | while read RIGA; do
	RIGA=$( echo $RIGA | cut -d " " -f 3 )
	
	if [[ $RIGA == $PREV ]]; then
		(( COUNT++ ))
	else
		COUNT=1
	fi
	
	echo -n $RIGA
	echo " $COUNT"

	PREV=$RIGA
done | sort -k 2 | uniq
