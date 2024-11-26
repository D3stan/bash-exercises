#!/bin/bash

exec {FD}<> ./i.txt

source figlio.sh
#exec {FD}>&-

