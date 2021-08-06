#!/bin/bash

#------------------HELP-------------------
#You have to put the username you want to delete next to the command: ./borrar_usuaris "username"

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

Nom=$1

if [ -z "$Nom" ]
then

echo -e "\n${redColour}¡¡YOU DIDN'T PUT THE USERNAME YOU WANT TO DELETE NEXT TO THE COMMAND!!${endColour}\n\n${blueColour}Indicate the username that you want to delete next to the command like this: ./borrar_usuaris "username"${endColour}\n"

else

sudo userdel $Nom

echo -e "\n${greenColour}User deleted${endColour}\n"

sudo rm -rf $Nom

echo -e "\n${greenColour}File deleted${endColour}\n"

fi

