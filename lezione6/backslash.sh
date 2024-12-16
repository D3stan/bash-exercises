#!/bin/bash

patterns=("*" "?" "[" "]")

while read riga; do
	newriga="$riga"

	for pattern in "${patterns[@]}"; do
  		newriga=${newriga//"$pattern"/"$pattern\\"}
	done

	#newriga=${riga//"*"/"*\\"}
	#newriga=${newriga}
	echo $newriga
done
