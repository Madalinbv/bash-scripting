#! /bin/bash
#remove and recreate the folder#
rm -r /hot-folder

mkdir ./hot-folder

for i in $(find . -type d)   ;
do

if [ "$i" != "./hot-folder" ]; then

	echo "********** FOLDER  $i ***************** "

	for myfile in $i/* ;
	do

		if [ -f "$myfile" ]; then

			echo "the file inside is:  $myfile"
			check=$(grep -ni "spo" "$myfile")

			if [ -z "$check" ]; then
				echo "EMPTY"
			else
				echo "HOT FILE!! FOUND!"

				name_f=$(basename "$myfile")
				#we take only the basename of the file using basename#

				cp "$myfile" ./hot-folder/"$name_f"
				echo "  " >> hot-folder/"$name_f"
				echo "*******" >> hot-folder/"$name_f"
				echo "$check" >> hot-folder/"$name_f"
			fi
		fi

	done
	echo "---------------"
	echo "  "
fi

done