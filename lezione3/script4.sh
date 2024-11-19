#!/bin/bash

FILES=`ls`
echo $FILES
echo " "

for file in $FILES; do	echo "file is: ${file}"; echo "infos: `ls -ld ${file}`"; done
