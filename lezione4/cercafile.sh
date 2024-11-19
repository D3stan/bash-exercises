#!/bin/bash

for letter in {c..g}; do
	for obj in /usr/include/?${letter}*; do
		if [[ ${#obj} -lt 18 || ${#obj} -gt 23 ]]; then
			echo ${obj}
		fi;
	done
done
