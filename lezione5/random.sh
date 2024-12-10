#!/bin/bash

COUNT=0

while (( RANDOM % 10 != 2 )); do
	(( COUNT++ ))
done

echo "Counted $COUNT times"
