#!/bin/bash

output=$(./lanciaeprendipid.sh)

for word in $output; do
	kill -9 $word
	echo "killed: $word"
done 
