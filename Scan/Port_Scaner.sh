#!/bin/bash

if [ $1 ]; then
	ip_adress=$1
	for port in $(seq 1 65535); do
		timeout 1 bash -c "echo '' > /dev/tcp/$ip_adress/$port" 2>/dev/null && echo "[*] Port $port - OPEN" &
	done;wait
else
	echo -e "\n[*] Uso: ./Port_Scaner.sh <ip-adress>\n"
fi
