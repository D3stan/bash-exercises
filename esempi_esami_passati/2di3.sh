#!/bin/bash

exec {FD}< /usr/include/stdio.h

while read -u ${FD} StringaLetta ;
do
	echo "ho letto: ${StringaLetta}"
done
