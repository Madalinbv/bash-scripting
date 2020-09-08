#! /bin/bash

read -p "Type something:  (Enter to exit)"

#-z => check if the string is empty
#"$str" => concatenated string - no error on spaces
if [ -z $str ]; then
 	echo "this is an empty string"
	exit
fi
echo "moving on"
