#!/bin/bash

while read riga; do
	if echo "$riga" | grep -q -i "a"; then
		echo "$riga" | wc -m
	fi
done < $1
