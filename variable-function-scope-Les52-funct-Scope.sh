#! /bin/bash


myfunction(){

	local var1="Eggs"
		var2="Salad"

	echo "my variable inside the funct is: $var1"
}


echo "start the program"

myfunction

echo "Outside :  $var1"
echo "Outside :  $var2"





