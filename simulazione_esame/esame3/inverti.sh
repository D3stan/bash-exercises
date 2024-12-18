#!/bin/bash

if [[ $1 == "" ]]; then
        echo "Must provide a file path!"
        exit 1
fi

tac < $1
