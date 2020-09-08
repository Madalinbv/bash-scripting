 #! /bin/bash
 ######## Automatically Created Script ########

echo "select an option... "
echo " type 1 to Do A"
echo " type 2 to do B"
echo " type 3 to do C"
echo " type 4 to do D"
read choice

case $choice in
1)
		echo " You choose  A "
		;;
2)
		echo " You choose  B "
		;;
3)
 		echo " You choose  C "
 		;;
4)
 		echo " You choose  D "
 		;;
*)
 		echo " NONE of The Above "
 		;;
esac
sleep 2

#########################################


echo "make a choice"
read choice

case $choice in
"hello")
		echo " you typed hello "
		;;
*".txt")
		echo " txt file  "
		;;
*".jpg")
 		echo " jpg file "
 		;;
4)
 		echo " D "
 		;;
*)
 		echo " NONE of The Above "
 		;;
esac
sleep 2
#########################################


echo "******************************"
echo "type a caracter "
read car

case $car in
[0-9])
		echo " you typed a number between 0-4"
		;;
[a-z])
 		echo " you typed a lower case letter "
 		;;
[A-Z])
 		echo " you typed a upper case letter "
 		;;
*)
 		echo " NONE of The Above "
 		;;
esac
sleep 2
#########################################


echo "******************************"
echo "type a caracter "
read car

case $car in
[0-1])
		echo " you typed a number between 0-1"
		;;
1[5-9])
		echo " you typed a number between 15-19  "
		;;
[2-4] | [7-9] )
		echo " you typed a number 2-4 OR 7-9"
		;;
*)
 		echo " NONE of The Above "
 		;;
esac
