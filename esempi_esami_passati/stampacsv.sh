#!/bin/bash

if [[ ! -s "$1" || "$1" != *.csv || ! $2 =~ ^[0-9]$ ]]; then
	echo "Invalid input"
	exit 1
fi

while read RIGA; do
	echo "$RIGA" | cut -d "," -f "$2"
done < $1
