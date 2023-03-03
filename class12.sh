#!/bin/bash

###### Functions ##########

# RUN ONLY ON VM
# || es or
# Class12 - Update Universal update script (class11)

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

check_exit_status() {
    if [ $? -ne 0 ]
    then
        echo "An error ocurred, please check the $errorlog file."
    fi
}

# if [ -d /etc/pacman.d ]
if grep -q "Arch" $release_file # Esta versión es una regresión porque no anda en todas las Arch based

then
	# The host is based on Arch, run pacman update command
	echo "Updating Arch"
    sudo pacman -Syu 1>>$logfile 2>>$errorlog
    check_exit_status
fi

# if [ -d /etc/apt ] # Agrra todas las distros con apt
# if grep -q "Mint" $release_file # Esta versión es una regresión porque no anda en todas las Debian based
if grep -q "Debian" $release_file || grep -q "Mint" $release_file || grep -q "Pop" $release_file
then
	echo "Updating"
	sudo apt update 1>>$logfile 2>>$errorlog
    check_exit_status
	sudo apt dist-upgrade 1>>$logfile 2>>$errorlog
    check_exit_status
fi

# Lo agregué yo, no está en la clase
if grep -q "Fedora" $release_file
then
	echo "Updating Fedora"
	sudo dnf dist_upgrade -y 1>>$logfile 2>>$errorlog
    check_exit_status
fi
