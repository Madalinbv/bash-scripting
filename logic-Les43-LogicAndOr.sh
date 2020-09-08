#! /bin/bash


echo "hello"
read -p "How old are you?  " age

# -o => OR
# -a => AND

if [ $age -lt 0 -o $age -gt 200 ]; then
	echo "Number Not Acceptable"
	exit
fi

if [ $age -gt 26 -a $age -lt 64 ]; then
	echo "you are between 26 and 64"
	exit
fi
echo "Ok let's continue with the script:"
