#!/bin/bash

if (( $# > 10 )); then
	echo "too many args!"
fi

PARI=0
DISPARI=0

for (( i = $# ; i > 1 ; i-- )); do
	if (( i % 2 == 0 )); then
		(( PARI += $( wc -c ${!i} | cut -d " " -f 1 ) ))
	else
		(( DISPARI += $( wc -c ${!i} | cut -d " " -f 1 ) ))
	fi
done

echo $DISPARI >&2
echo $PARI
