#! /bin/bash


for i in $(find . -type d);
do
	echo "THIS is the folder: $i"
	for myfile in $i/*;
	do

		if [ -f "$myfile" ] ; then			
			echo "the file inside is:  $myfile"

		# DO WHATEVER YOU WANT HERE...
		# (BUT BE CAREFUL!!!)

		fi
		
	done
	echo "--------------"
	echo " "

done
