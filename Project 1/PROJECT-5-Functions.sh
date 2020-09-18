#! /bin/bash

# Function

get_File(){

	local str="$1"
	local fil="$2"


	# echo "the string you are Looking for is: $str "
	# echo " the file is you are searching is  $fil  "

	#grep -ni $str $fil

	check=$(grep -ni "$str" "$fil")

	if [ -z "$check" ]; then
		echo "### Empty! ###"
	else
		echo "FOUND!"
		local name_file=$(basename "$fil")
		#echo "just the name is: $name_file"

		cp "$fil" hot-Folder/"$name_file"
		echo " " >> hot-Folder/"$name_file"
		echo "*-------##****" >> hot-Folder/"$name_file"
		echo "$check" >> hot-Folder/"$name_file"
	fi
}






###################### Whole Program ###################
rm -r /hot-folder
mkdir ./hot-Folder

for i in $(find . -type d);
do

if [ "$i" != "./hot-folder" ]; then
	echo "************* THE FOLDER IS $i ***********"
	for myfile in $i/*;
	do 													
		if [ -f "$myfile" ] ; then				#  			
			get_File "spo" "$myfile"			# Function
		fi 										#		
	done
fi	
	echo "--------------"
done
###################### Whole Program ###################







