#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"                                                                                                                                        #indica els colors de les frases

ip=$1                                                                                                                                                               #iguala la "ip" a "$1" que es com la terminal interpreta la primera frase despres del comando que inicia aquest programa 

nmap $ip -p- -T5 -v -n -oG allPorts > /dev/null                                                                                                                     #escaneja la ip que li hem posat al final del comando per iniciar aquest programa

echo -e "\n${yellowColour}[*] Extracting information...${endColour}\n"                                                                                              #et diu  que esta "Extracting information..." en groc

ip_adress=$(cat allPorts | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u)                                                                                 #imprimeix "allPorts" i ho filtra per els numeros d'entre 1 a 3 digits i que en total siguin 4 i ho filtra perque no es repeteix (1-3.1-3.1-3.1-3)

open_ports=$(cat allPorts | grep -oP '\d{1,5}/open' | awk '{print $1}' FS="/" | xargs | tr ' ' ',')                                                                 #imprimeix "allPorts" i ho filtra per els numeros entre 1 i 5 digits

echo -e "\t${blueColour}[*] IP Adress: ${endColour}${grayColour}$ip_adress${endColour}"                                                                             #imprimeix "IP Adress:" en blau

echo -e "\t${blueColour}[*] Open ports: ${endColour}${grayColour}$open_ports${endColour}\n"                                                                         #imprimeix "Open ports:" en blau

echo $open_ports | xclip -sel clip                                                                                                                                  #llista el contingut de la variable "open_ports" i el copia en el portapapeles

echo -e "${yellowColour}[*] Ports has been copied to clipboard!${endColour}\n"                                                                                      #imprimeix en groc que els ports s'han copiat al portapapeles (en angles)

