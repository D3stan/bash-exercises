#!/bin/bash

if [[ -z $1 ]]; then
	./ping.sh "lol" &
	exit 0
fi

# Faccio partire pong, che si mettera' in wait
./pong.sh &

while [[ -e "vai.txt" ]]; do
	# Inizio
	echo "ping!"

	# Mando il segnale a pong
	touch "pong.txt"

	# Reimposto
	rm "ping.txt" > /dev/null

	# Aspetto di poter ripartire
	while [[ ! -e "ping.txt" && -e "vai.txt" ]]; do
		sleep 1
	done
done
