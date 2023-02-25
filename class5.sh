#!/bin/bash

# If statements

#-ne !=, -gt >, ge >=, 
mynum=300

if [ ! $mynum -eq 100 ]
then
    echo "The condition is True"
else
    echo "The variable does not equal 200"
fi

### Check precense of files in files system
# Chequear directorios -> usar -d en vez de -f

if [ -f ~/Documentos/GitRepos/Bash_intro/myfile ]
then
	echo "The file exists"
else
	echo "The file does not exist"
fi

