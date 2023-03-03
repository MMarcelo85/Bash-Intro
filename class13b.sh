#!/bin/bash

#Case statements

finished=0

while [ $finished -ne 1 ]
do
	echo "What 's your favorite Linux distribution?"

	echo "1 - Arch"
	echo "2 - Fedora"
	echo "3 - Debian"
	echo "4 - Something else ..."
	echo "5 - Exit the script"
	read distro;

# La última opción no necesita ;;
	case $distro in
		1) echo "Arch is a rolling relezase";;
		2) echo "Fedora is the upstream for Red Hat";;
		3) echo "Debian is a community distribution";;
		4) echo "There are many distributions out there...";;
		5) finished=1 ;;
		*) echo "You didn't enter a valid choice." # catch all error
	esac
done	
echo "Thank you for running the script"
