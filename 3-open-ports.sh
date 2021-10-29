#!/bin/bash

usage () {
	echo "usage: $0 [port ...]"
	echo "    Open the provided PORTs for TCP and UDP traffic."
	echo "    Typically one for the game (query) server and one for RCON requests."
	exit
}

if [ $# == 0 ]; then
	usage
fi

for port in "$@"
do
	sudo firewall-cmd --permanent --zone=public --add-port=$port/tcp;
	sudo firewall-cmd --permanent --zone=public --add-port=$port/udp;
done

sudo firewall-cmd --reload
