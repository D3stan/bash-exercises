#!/bin/bash
iLetta=1
while true; do
	read -u ${FD} i
#	echo ${i}
	if (( "$?" != 0 )); then
		if (( ${iLetta} < 10 )); then
			(( iLetta=$iLetta +1 ))
	 		echo ${iLetta} 1>&${FD}
			echo $$
#			source figlio.sh
		fi
		break
	else
		i=$iLetta
	fi
	#echo $$
done
