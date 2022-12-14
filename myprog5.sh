#!/bin/bash
i=$(($#-1))  #Number of wildcard parameters

#For each file ask user if they want to delete or not
for file in $@
do
echo "Do you want to delete ""$file"" (y/n): "
read yesorno

if [ "$yesorno" == "y" ];
then
    rm $file
    echo "1 file deleted"
fi
done

