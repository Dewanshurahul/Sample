#! /bin/bash
count=$1
function error () {
	echo "Input can not be 0 or Negative"
}
function harmonic () {
	local num=$1 
	var=0
	local count=1
	local c=1
	while (( $count <= $num ))
	do
		y=`echo $c / $count | bc -l`
		var=`echo $var + $y | bc -l`
		(( count++ ))
	done
	echo "$var"
}
if [ $count -gt 0 ] 
then
	harmonic $count
else
	error
fi
