# Check if a programm/command exists

comando=htop

# if [ -f $comando ]
if command -v $comando
then
	echo "$comando is available, lets run it..."
else
	echo "$comando is not available, installing it..."
	sudo apt update && sudo apt install -y $comando
fi

$comando
