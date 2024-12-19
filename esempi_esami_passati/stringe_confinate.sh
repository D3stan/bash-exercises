#!/bin/bash

while read RIGA; do
	echo $RIGA
#done < cadutevic2.txt | sed 's/" "/@/g' | cut -d '@' -f 3
done < cadutevic2.txt | awk -F '" "' '{print $3}'
