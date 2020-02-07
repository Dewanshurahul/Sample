#! /bin/bash
echo -e "Enter any to find It is Leap year or not : \c"
read year
if [ $year -ge 1000 ] && [ $year -lt 10000 ]
then
	if [ $(( year % 400 )) -eq 0 ] || [ $(( year%4 )) -eq 0 -a $(( year%100 )) -ne 0 ] ]
	then
		echo "$year is Leap Year"
	else
		echo "$year is not a Leap Year"
	fi
else
	echo "Enter a Four Digit year"
fi
