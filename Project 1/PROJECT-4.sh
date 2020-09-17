#! /bin/bash
# run recursively through all folders#

for folder in $(find . -type d); # find folders#
do
		echo "the folder is $folder"
done
