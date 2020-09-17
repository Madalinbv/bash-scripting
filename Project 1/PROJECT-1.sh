#! /bin/bash
##search for all files containing a specific word - "spo" ##

for myfile in  * ; do ## go through the files in current folder##
	if [ -f "$myfile" ]; then
		echo "this is a file: $myfile"

		grep -ni "spo" "$myfile"
		##-n line number
	else
		echo "$myfile  is not a file"
		echo " "
	fi
done

