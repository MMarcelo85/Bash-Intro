#!/bin/bash

echo "Hello World!"
# Force exit code to be 1 no matter what
# Se puede forzar el exit code a cualquiera.
# exit termina el script y le asigna el número
# echo $? no se corre nunca
exit 1
echo $?
