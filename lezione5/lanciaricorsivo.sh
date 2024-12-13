#!/bin/bash

if (( $1 > 0 )); then
	arg=$1
	(( arg = arg - 1 ))
	./lanciaricorsivo.sh $arg &	
	echo $!
fi

wait $!
