#! /usr/bin/bash
num=$1
out=1
cout=1
while [ $out -le $num ]
do
	cout=$(( $cout * 2 ))
	echo "$cout"
	(( out++ ))
done
