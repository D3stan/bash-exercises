#!/bin/bash

OUT=""

while read prima seconda terza; do
	OUT+="$seconda "
done < $1

echo "$OUT" | sed 's/\t//g'
