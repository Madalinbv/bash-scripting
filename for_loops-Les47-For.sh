#! /bin/bash

for i in {1,2,3,4}
do
	echo "this is the value  $i"
done

echo "*****************************"

for i in {0,-5,1,-6,9}
do
	echo "this is the value  $i"
done
echo "*****************************"

for i in {0,"dog",-1e+.qw,"hello there",9}
do
	echo "this is the value  $i"
done
echo "##############################"echo "end"

for i in {0,"danger","dog","hello there",9}
do
	echo "this is the value  $i"
	if [ $i == "danger" ]; then
		echo "**** WE have to stop the loop here!!!!!****"
		break
	fi
done
echo ""
echo "##############################"

for i in ./*
do 
	echo " File  $i  "
done

