#!/bin/bash

if (( $# < 1 )); then
	dir="usr/include/linux/"
	ext="*.j"
else
	ext="*.txt"
	dir=$1
fi

find $dir -mindepth 2 -type f -name "$ext" -printf "%T@ %p\n" | sort | tail -n 1 | cut -d " " -f2-
