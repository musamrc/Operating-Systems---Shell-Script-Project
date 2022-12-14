inputNumber=$1 ##Number entered from the keyboard
counter=0 ##Variable to deterine prime number
number=2 ##forprime number
number2=0 ## To print the specified prime number
rem=0 ## To find the remainder of division by 16
hex=0
hexArray=('0' '1' '2' '3' '4' '5' '6' '7' '8' '9' 'A' 'B' 'C' 'D' 'E' 'F') ## To show the hexadecimal equivalents of numbers
while [ $number -le $inputNumber ] ## To check the numbers up to the entered number
do

	for (( i=2;i<number;i++ )) ## To determine the prime number
	do
		if (( $number%i == 0 ))
		then
		counter=1
		fi
	done
	if (( $counter == 0 )) ## If the number is a prime number
	then
	hex=""
	number2=$number	
	while (( 0 < $number )) ## To convert a number to base 16
	do
	rem=$((number%16))
	hex="${hexArray[rem]}$hex"
	number=$((number/16))
	done
	echo "Hexadecimal of $number2 is $hex"
	number=$number2
	fi

((number++))
counter=0
done
