#! /usr/bin/bash
echo "Enter X-axis Value"
read x
echo "Enter Y-axis Value"
read y
value=$(( (( $x*$x ))+(( $y*$y )) ))
var=$(awk 'BEGIN {print sqrt('$value')}')
echo "Distance is "$var
