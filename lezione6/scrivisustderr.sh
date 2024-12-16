#!/bin/bash

while read riga; do
	echo "${riga% *}" 1>&2
	echo "evviva"
done
