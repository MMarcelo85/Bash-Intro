#!/bin/bash

myvar=1

while [ -f ~/Documentos/GitRepos/Bash_intro/testfile ]
do
	echo "As of $(date), the test file exists."
	sleep 2
done
echo "As of $(date), the test file has gone missing"

# Create the testfile, Run it, open a new terminal, delete the file 
