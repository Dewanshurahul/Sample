#! /usr/bin/bash
echo -e "Enter the Number to Find Factor : \c"
read number
num=2
while (( $num <= $number ))
do
	if (( $number%$num == 0 ))
	then
		number=$number/$num
		echo $num
	else
		(( num++ ))
	fi
done
