#! /bin/bash


read -p "give me the name of the file please " myfile

#File Exist
if [ -e $myfile ]; then
	echo "$myfile  exists!"
	#open $myfile
else
	echo "$myfile Does Not Exist"
fi


### #File DOES NOT Exist
if [ ! -e $myfile ]; then
	echo "$myfile  Does Not Exist!"
fi

### Directory
if [ -d $myfile ]; then
	echo "$myfile is a Directory !"
	#open $myfile
else
	echo "$myfile is Not a Directory"
fi

### Regular File
if [ -f $myfile ]; then
	echo "$myfile is a Regular file !"
	#open $myfile
else
	echo "$myfile is Not a Regular File"
fi

### #File exists And is Readable
if [ -r $myfile ]; then
	echo "$myfile is Readable !"
	#open $myfile
else
	echo "$myfile is Not Readable"
fi


### #File Exists and is Executable
if [ -x $myfile ]; then
	echo "$myfile is Executable !"
	#open $myfile
else
	echo "$myfile is Not Executable"
fi

### #File Exists and it is NOT Empty
if [ -s $myfile ]; then
	echo "$myfile Not Empty !"
	#open $myfile
else
	echo "$myfile is Empty"
fi

echo "bye"
