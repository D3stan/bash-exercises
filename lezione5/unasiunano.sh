#!/bin/bash

i=0

tail | while read riga; do
	if (( i % 2 == 0 )); then
		echo $riga
	fi
	(( i++ ))
done
