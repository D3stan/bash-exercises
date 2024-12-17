#!/bin/bash

 grep "SISTEMI OPERATIVI" lista.txt -B 1 --no-group-separator | cut -d " " -f1 | while read riga; do
	if (( i % 2 == 0 )); then
		echo $riga
	fi
	(( i++ ))
done

#versione migliore
grep "SISTEMI OPERATIVI" lista.txt -B 1 --no-group-separator | cut -d " " -f1 | grep -v SISTEMI
