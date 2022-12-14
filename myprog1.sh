#! /usr/bin/bash
word=$1
number=$2
charCounter=0
numCounter=0
alphabet=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz #defining alphabet for iterating over it
while [ $charCounter -lt ${#word} ] #iterating over word until last char
do
  currentChar=${word:$charCounter:1}  #getting current char to work on it
  currentNum=${number:$numCounter:1}
  if [ ${#number} -gt 1 ]  #checking 2nd argument if theres a number or not
  then
  ((numCounter++)) 
  fi
  result=$(printf $currentChar | tr "${alphabet:0:26}" "${alphabet:${currentNum}:26}") #changing letter according to alphabet defining
  echo -n $result
  ((charCounter++))
done

