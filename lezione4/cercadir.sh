#!/bin/bash

DIR="/usr/include"
temp=""
for element in `ls ${DIR}`; do
	temp="${DIR}/${element}"
	[[ -d ${temp} && -r ${temp} && ${temp} -nt ${DIR}/stdio.h ]]
	if (( $? == 0 )); then
		echo $element
	fi;
done
