#!/bin/bash

i=0

for file in $( ls -S1 ); do
	args[${i}]=$file
	(( i++ ))
	if (( i == 7 )); then break; fi
done

./contaseparatamente.sh ${args[0]} ${args[1]} ${args[2]} ${args[3]} ${args[4]} ${args[5]} ${args[6]} 1>&2
