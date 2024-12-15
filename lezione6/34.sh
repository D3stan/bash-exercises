#!/bin/bash

if [[ $1 != "" ]]; then
	dir=$1
else
	dir="/usr/include/"
fi

find "${dir}" -type f -exec head -n 3 {} \;
