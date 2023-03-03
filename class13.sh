#!/bin/bash

#Case statements

echo "What 's your favorite Linux distribution?"

echo "1 - Arch"
echo "2 - Fedora"
echo "3 - Debian"
echo "4 - Something else ..."

read distro;

# La última opción no necesita ;;
case $distro in
	1) echo "Arch is a rolling relezase";;
	2) echo "Fedora is the upstream for Red Hat";;
	3) echo "Debian is a community distribution";;
	4) echo "There are many distributions out there...";;
	*) echo "You didn't enter a valid choice."
esac
