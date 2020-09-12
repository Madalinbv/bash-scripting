#! /bin/bash

# -----------------------------------------------------------------------------
# EXERCISE-1
# Create a script that checks if a number is divisible by either 2, 3 or 5.
#
# Create a function that does that.
#
# Hint: A number, say 18, is divisible by 3 if the reminder of the division 18/3 is 0,
#otherwise it is not divisible by 3. Review the lesson on "Arithmetic Expressions" and "
# "IF Conditions" in case you have any doubts.
# -----------------------------------------------------------------------------
#

# division(){
#
# echo "Type a Number:"
# read number
#
# if [[ $number%2 -eq 0 ]]; then
#   echo "$number is divisible by 2"
# fi
# if [[ $number%3 -eq 0 ]]; then
#   echo "$number is divisible by 3"
# fi
# if [[ $number%5 -eq 0 ]]; then
#   echo "$number is divisible by 5"
# fi
# return 0
# }
#
# division
# echo "return value of my funct is  $? "
# echo "-------end of function-------"

# -----------------------------------------------------------------------------
#
#
# divisible (){
#   local num=$1
#   echo "checking $num "
#   for i in {2,3,5}
#   do
#   if [[ $(( $num%i)) -eq 0 ]]; then
#     echo "the number is divisible by $i"
#   fi
# done
#
# }
# echo "type a number"
# read number
# divisible $number

# -----------------------------------------------------------------------------
#
# EXERCISE-2
# Create a script that counts the number of ".txt" files inside your present working directory.
#
# Review the lesson on "For Loops"  , "IF Conditions"  and "Arithmetic Expressions" in case you have any doubts.
#
# -----------------------------------------------------------------------------
#

# echo "****** Exercise 2 - counting the number of .txt files ****"
# j=0
# for i in ./*.txt
# do
#   j=$(( j +1))
#
# done
# echo "There are a number of $j .txt files in this folder"

# -----------------------------------------------------------------------------
#

# EXERCISE-3
# In this exercise after creating some .txt and .jpg files,
# we will let the user choose either the .jpg or the .txt files,
# and rename all these files.
#
# -Create any number of different .txt files and .jpg files.
# -Let the user choose either the .jpg or the .txt files and
# keep asking until the user press either "j" or "t".
#
# -Let the user choose a Prefix to add to the name of all the selected files
# (all the .jpg or all the .txt files).
# -Rename all the selected files adding this prefix to their name.
#
#
#
# Review the lesson on "While Loops"  and "Logic Conditions" in Section 4 and "Variables" in Section 2
# in case you have any doubts.

# -----------------------------------------------------------------------------
#
for i in {1..4}; do
  touch "${i}_file.txt"
done

for i in {1..4}; do
  touch "myfile_${i}.jpg"
done

echo " creating the files..."
sleep 1
#ls -l
echo""

################
choice=""
while [ "$choice" != "t" -a "$choice" != "j" ]; do
  echo "To rename a .jpg file type j. To rename a .txt file press t."
  read choice
  echo "you typed $choice"
done

read -p "write prefix to add to these files " pref
echo "the prefix is $pref "
if [ "$choice" == "t" ]; then
  for element in *.txt
    do
    echo " txt files are ${element} "
    mv ${element} ${pref}_${element}
  done
else
  for element in *.jpg
  do
    mv ${element} ${pref}_${element}
  done
fi
