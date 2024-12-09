#!/bin/bash

while read riga; do
	count=$(echo $riga | wc -m)
	echo "$(( --count ))"
done
