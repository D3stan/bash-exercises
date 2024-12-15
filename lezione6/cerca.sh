#!/bin/bash

if [[ -z $2 || $2 == "" ]]; then
	echo "need 2 parameters"
	exit
fi

find "${1}" -name "${2}" -print
