#!/bin/bash

while read prima seconda terza;
do
	if (( ${#terza} > 2 )); then
		echo "${terza:1:1}"
	else
		echo "riga non valida"
	fi
#done < /usr/include/stdio.h
done <<FILE
uno due tre quattro
cane lupo lepre gatto
barca moto b
casa capanno
FILE
