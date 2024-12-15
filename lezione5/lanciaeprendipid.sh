#!/bin/bash

PIDs=""

for (( i = 0 ; i < 10 ; i++ )); do
	./puntini.sh 10 > /dev/null &
	PIDs="$PIDs $!"
done

#wait $!
#echo " "

echo $PIDs
