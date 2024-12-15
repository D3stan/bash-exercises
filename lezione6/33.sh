#!/bin/bash

if [[ $1 != "" ]]; then
        dir=$1
else
        dir="/usr/include/"
fi

find "${dir}" -maxdepth 1 -name "*net.sh"
