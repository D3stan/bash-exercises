#!/bin/bash

echo "${PATH}" | sed -e "s/:/\\n/g" -e "s/\//\\n/g"
