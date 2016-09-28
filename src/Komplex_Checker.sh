#!/bin/bash
# Search listed files by PaloAlto on researchcenter
# http://researchcenter.paloaltonetworks.com/2016/09/unit42-sofacys-komplex-os-x-trojan/
# Version: 0.1

RED='\033[0;31m'
NOCOLOR='\033[0m'
GREEN='\033[0;32m'
FLAG='0'

for line in /Users/Shared/.local/kextd \
/Users/Shared/com.apple.updates.plist \
/Users/Shared/start.sh; do
	
	echo -e "Checking for" $line 
	NAME=$(echo $line | awk -F "/" '{print $NF}')

	if [ -f "$line" ]; then
		echo -e "${RED}[-] POSSIBLE KOMPLEX OS X TROJAN FILE FOUND in $NAME ${NOCOLOR}"
		FLAG='1'
		read -p 'Do you want to remove it? [Y/n]  ' yn
		case $yn in
			[Yy]* ) rm  $line && echo -e "${GREEN}$NAME ${NOCOLOR}Deleted";;
			[Nn]* ) echo -e "${RED}$NAME ${NOCOLOR}Not deleted!" ;;
			* ) echo "Invalid Option" ;;
		esac
		echo ""
	else
		echo -e "${GREEN}[+] $NAME NOT FOUND\n ${NOCOLOR}"
	fi
done

if [ "$FLAG" = "1" ]; then
	echo -ne "\nPlease remove possible Komplex OS X trojan and run the program again\n\n"
elif [ "$FLAG" = "0" ]; then
	echo -ne "\nNo Komplex OS X trojan found in your system\n\n"

fi
