#!/bin/bash

i=0; while read riga; do (( i++)); if (( i > 2 && i < 6 )); then echo $riga; fi; done < 28.txt
