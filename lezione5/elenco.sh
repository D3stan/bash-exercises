#!/bin/bash

LungNomiDirectory=0
NumFiles=0

for file in *; do
	echo $file
	if [[ -d "$file" ]]; then
		(( LungNomiDirectory += ${#file} ))
	else
		(( NumFiles++ ))
	fi
done

echo "Numero files: $NumFiles"
echo "Lunghezza nomi directory: $LungNomiDirectory"
