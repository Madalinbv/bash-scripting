#! /bin/bash

#create folder#

mkdir ./hot-Folder

for myfile in  * ;
do
	if [ -f "$myfile" ]; then
#getting the result of the grep through the content of the file#
		check=$(grep -ni "spo" "$myfile")
		#check if result is empty#
		if [ -z "$check" ]; then
			echo "EMPTY"
		else
			echo "FOUND !"
			cp "$myfile" hot-Folder
			#copy file in folder#
			echo " " >> hot-Folder/"$myfile"
			echo "*******" >> hot-Folder/"$myfile"
			#append the result in the file#
			echo "$check" >> hot-Folder/"$myfile"

		fi
	else
		echo "$myfile  is not a file"
		echo " "
	fi
		echo "----------------------------"
done

