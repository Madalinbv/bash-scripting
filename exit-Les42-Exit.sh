#! /bin/bash

echo "hello"

echo "line 1"
echo "line 2"
echo "line 3"
#exit
echo "line 4"
echo "line 5"

read -p "How old are you?  " age

if [  $age -lt 0 ]; then
	echo "************************************************"
	echo "You cannot have a negative age!"
	echo "Sorry this number could mess up the Shell script"
	echo "The program has to quit now!"
	echo "************************************************"
	exit
fi

echo " "
echo "Ok let's continue with the script:"
echo "line 6"
echo "line 7........."
