#!/bin/bash

VOTO=""

while read MAT1 VOTO1; do
	while read MAT2 VOTO2; do
		if [[ $MAT1 == $MAT2 ]]; then
			VOTO=$VOTO2
		fi
	done < esame2.txt

	if [[ $VOTO == "" ]]; then
		VOTO=$VOTO1
	fi	

	echo $MAT1 $VOTO
	VOTO=""
done < esame1.txt

echo " "

while read MAT VOTO; do
	grep $MAT esame2.txt
	if (( $? != 0 )); then
		echo $MAT $VOTO
	fi
done < esame1.txt
