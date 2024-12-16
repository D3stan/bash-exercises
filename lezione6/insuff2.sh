#!/bin/bash

# clear the txt file
echo -n "" > tosort.txt

while read nome cognome matricola voto; do
	grep $nome RisultatiProvaPratica1.txt > /dev/null
	if [[ "$?" != "0" ]] && [[ $nome != "" ]] && (( voto < 18 )); then
		#echo "$cognome ${matricola} ${nome} ${voto}" >> tosort.txt
		echo $matricola $nome $cognome $voto >> tosort.txt
	fi
done < RisultatiProvaPratica2.txt

sort -k 3 tosort.txt

#sort tosort.txt | while read cognome matricola nome voto; do
#	echo $matricola $nome $cognome $voto
#done
