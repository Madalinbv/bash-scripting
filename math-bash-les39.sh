#! /bin/bash

number1=10
number2=20

echo " SUM $(( number1 + number2 )) "
echo " PRODUCT $(( number1 * number2 )) "
echo " DIVISION $((number2 / number1))"
echo "REMINDER : $(( 10 % 3 )) "

echo " POWER: $(( 3**2 ))"

echo "--------------------"
echo "INCREASE A VARIABLE"


echo "variable is $number1"
echo " $(( number1-- )) "
echo "variable now is $number1"

echo "INCREASE OF 1 A VARIABLE BEFORE PRINTING IT"
echo "variable $number1"
echo "$(( ++number1 ))"
echo  "variable now is $number1"


echo "--------------------------"
echo "SHORT WAY OF OPERATING ON A VARIABLE"


number1=10
number1=$((number1 +3 ))
echo "value=  $number1"

echo "ADD:  $((  number1+=3  )) "
echo "$number1"

echo "SUBTRACT: $(( number1-=10 ))"
echo "$number1"


echo " MULTIPLY: $(( number1*=10 ))"





