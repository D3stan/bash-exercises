#!/bin/bash

count=0
auxCount=0

# cont le lettere A
while [[ ${1:count:1} == "A" ]]; do
	(( count++ ))
done

# se le lettere A sono meno della meta' dell'input interrompo subito
if (( count != ${#1} / 2 )); then
	echo "falso"
	exit
fi

# conto le B
auxCount=$count
while [[ ${1:auxCount:1} == "B" ]]; do
	(( auxCount++ ))
done

# se il numero di B non corrisponde a quello di A interrompo
if (( auxCount != ${#1} )); then
	echo "falso"
	exit
fi

echo "vero N=${count}"
