#!/bin/bash

directory=/etc
#directory=/etcisisis

if [ -d $directory ]
then
	echo "The Dir $directory does exist."
else
	echo "The Dir $directory doen't exist."
fi
echo "The exit code for this script is $?"
# El código es 0 porque después del test se imprime algo en pantalla
# El éxito en la impresión reemplaza el éxit code del error.

