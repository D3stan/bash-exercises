#!/bin/bash

momentaryIFS=$IFS #not needed but ...
IFS=","
SUM=0

while read primo secondo terzo; do
	echo "${primo}, ${terzo}"
	(( SUM = SUM + secondo ))
done < ./input1.txt
echo $SUM
IFS=$momentaryIFS
