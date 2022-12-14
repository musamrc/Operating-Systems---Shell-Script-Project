#!/bin/bash
fileName=$1


#checks if the file already exists in the given file name
if [ -e $fileName ]
then
    echo "$fileName"" exists. Do you want it to be modified? (y/n):"
    read yesno
    
if [ "$yesno" == "n" ]; then
    exit 0
fi

fi


#Generate random value for "giris.txt" and read required line
random=$(($RANDOM%3))
if [ $random == 0 ]
then
var=$(sed '1q;d' giris.txt)
elif [ $random == 1 ]
then
var=$(sed '3q;d' giris.txt)
elif [ $random == 2 ]   
then
var=$(sed '5q;d' giris.txt)
fi
echo "$var" > "./""$fileName"
echo "$var"

#Generate random value for "gelisme.txt" and read required linegerekli satırı oku
random=$(($RANDOM%3))
if [ $random == 0 ]
then
var=$(sed '1q;d' gelisme.txt)
elif [ $random == 1 ]
then
var=$(sed '3q;d' gelisme.txt)
elif [ $random == 2 ]   
then
var=$(sed '5q;d' gelisme.txt)
fi
echo -e "\n$var" >> "./""$fileName"
echo -e "\n$var"

#Generate random value for "sonuc.txt" and read required line
random=$(($RANDOM%3))
if [ $random == 0 ]
then
var=$(sed '1q;d' sonuc.txt)
elif [ $random == 1 ]
then
var=$(sed '3q;d' sonuc.txt)
elif [ $random == 2 ]   
then
var=$(sed '5q;d' sonuc.txt)
fi
echo -e "\n$var" >> "./""$fileName"
echo -e "\n$var"



