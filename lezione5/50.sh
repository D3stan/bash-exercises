#!/bin/bash

( head -n 5 28.txt | tail -n 3 ; tail -n 4 28.txt | cut -b -3 ) | read riga1; read riga2; echo -e "$riga2\n$riga1" #ecc
