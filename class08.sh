#!/bin/bash

# || es or
# Class08 - Universal update script

release_file=/etc/os-release

# if [ -d /etc/pacman.d ]
if grep -q "Arch" $release_file # Esta versión es una regresión porque no anda en todas las Arch based

then
	# The host is based on Arch, run pacman update command
	echo "Updating Arch"
	sudo pacman -Syu
fi

# if [ -d /etc/apt ] # Agrra todas las distros con apt
# if grep -q "Mint" $release_file # Esta versión es una regresión porque no anda en todas las Debian based
if grep -q "Debian" $release_file || grep -q "Mint" $release_file
then
	echo "Updating Mint"
	sudo apt update
	#sudo apt dist-upgrade
	sudo apt upgrade
fi

# Lo agregué yo, no está en la clase
if grep -q "Fedora" $release_file
then
	echo "Updating Fedora"
	sudo dnf update
fi
