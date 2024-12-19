#!/bin/bash

while [[ -e "vai.txt" ]]; do
	# Apetto che venga mandato il segnale
	while [[ ! -e "pong.txt" && -e "vai.txt" ]]; do
		sleep 2
	done

	# Rispondo
	echo "pong!"

	# Mando il segnale a ping
	touch "ping.txt"

	# Reimposto
	rm "pong.txt" > /dev/null
done
