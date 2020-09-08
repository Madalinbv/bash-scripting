#! /bin/bash


mydate(){

	echo "today is: "
	date
	echo "have a GREAT day !"
}

hello2(){

	echo "hello  $1 "
	echo "hello also to  $2 "
	return 100

}

echo "start here"

mydate
echo "---------------"

hello2 "Madalin" "Madalin 2"
echo "return value of my funct is  $? "
