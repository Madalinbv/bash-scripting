# EXERCISE-2
#
# Create a script that create an executable Script
# whose name is decided by the user
#!/usr/bin/env bash

read -p "name of script to create: " name_s

touch ${name_s}

echo "#! /bin/bash " >> ${name_s}
echo "#Automatically created script on $(date)###" >> ${name_s}

chmod +x ${name_s}

sleep 1

echo "Done"
