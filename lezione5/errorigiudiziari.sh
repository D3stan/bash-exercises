#!/bin/bash

while read numero verdetto; do
	proc=$(grep $numero processi.txt | cut -b -2)
	den=$(grep $proc denunce.txt | sed 's/[0-9]//g')
	echo "Accusato: $(echo $den | cut -d " " -f1,2)"
	echo "Reato: $(echo $den | cut -d " " -f3-)"
	echo "Verdetto: $verdetto"
	echo " "
done < verdetti.txt
