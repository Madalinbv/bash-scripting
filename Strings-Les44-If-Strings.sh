#! /bin/bash


echo "hello"

if [ "abcd" == "aBcd" ]; then
	echo "EQUAL"
fi

echo "moving on"

echo "--------------"

if [ "abcd" != "abcd" ]; then
	echo "different"

fi

echo "end"

######################

read -p "Type the password to know the file name: " pass
if [ $pass == "Table1X" ]; then
 	echo "Correct!  the file name is:  catfile.txt"
else
	echo "incorrect"
	exit
fi