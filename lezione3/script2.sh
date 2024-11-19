#!/bin/bash
ARGS=$#

while (( ARGS > 0 ))
do
	echo ${!ARGS}
	(( ARGS=ARGS-1 ))
done
