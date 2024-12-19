#!/bin/bash

PARI=0
DISPARI=0
INDEX=1

while read NUM; do
	if (( INDEX % 2 == 0 )); then
		(( PARI += NUM ))
	else
		(( DISPARI += NUM ))
	fi	
	(( INDEX++ ))
done <<NUMERI
3
56
2
8
4
78
9
15
NUMERI

echo Pari: $PARI
echo Dispari: $DISPARI
