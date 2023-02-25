#!/bin/bash

if [ ! -d tartest ]
then
	echo "Dir doesn't exist. Creating dir"
	mkdir tartest
else
	echo "Dir exists"
fi

for file in  ./*.sh
do
	tar -czvf $file.tar.gz $file
	mv $file.tar.gz ./tartest/$file.tar.gz
done
