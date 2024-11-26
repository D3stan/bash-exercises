#!/bin/bash

INDICE=$INDICE+1
if (( $INDICE < 12 )); then
	echo $$
	./figlio.sh
fi

