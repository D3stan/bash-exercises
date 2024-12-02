#!/bin/bash

# sovrascrivo il file
: > output.txt

#searchDir="/usr/include/"
searchDir="./"
count=0

# leggo ogni file nella cartella che rispetta i requisiti
for file in $(find "$searchDir" -type f -name "std*"); do
	
	# leggo ogni riga del file
	while read riga; do
		(( count++ ))

		# considero solo la seconda terza e quarta
		if (( count > 1 )); then
			echo $riga >> "output.txt"
		fi

		# se sono alla quinta esco
		if (( count >= 5 )); then
			break
		fi
	done < $file
	
	# resetto il contatore per il nouvo file da leggere
	(( count = 0 ))
done
