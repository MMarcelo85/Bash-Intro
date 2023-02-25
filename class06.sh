#!/bin/bash

# Exit codes
# $? da el exit code -> 0 es éxito

#ls
#echo "The exit code is $?"

#package=htop
package=nonexist
#sudo apt install $package
#echo "The exit code for the package installed  is: $?"

sudo apt install $package >> package_install.log

if [ $? -eq 0 ]
then 
	echo "The installation of $package was successful."
	echo "The new command is available here:"
	which $package
else
	echo "$package failed to install."  >> package_install_fail.log
fi
