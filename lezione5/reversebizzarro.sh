#!/bin/bash

if [[ -z $1 ]]; then
	echo "usage: reversebizzarro.sh <string>"
	exit 1
fi

reversed=""

for (( i = ${#1} - 1; i >= 0; i-- )); do
	reversed+=${1:i:1}
done

echo $reversed
