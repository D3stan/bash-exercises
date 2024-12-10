#!/bin/bash

# non puo' funzionare perche' il for si aspetta una condizione e gli diamo in pasto un output di testo
for (( i=0; ls ./ ; i=i+1 )); do
	echo "${i}";
done
