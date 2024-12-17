#!/bin/bash

COUNT=0
TEMP="temp.txt"

cat > $TEMP

while read nome cognome ammontare data; do
	while read nome2 cognome2 ammontare2 data2; do
		if [[  $ammontare2 == $ammontare ]]; then
			(( COUNT++ ))
		fi
	done < $TEMP
	
	echo $ammontare $COUNT
	COUNT=0
done < $TEMP | uniq

rm $TEMP
