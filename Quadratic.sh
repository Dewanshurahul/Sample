echo "Enter three values"
read a
read b
read c
delta=$(( (( b * b )) - (( 4*a*c )) ))
intermediate=$(awk 'BEGIN{print sqrt('$delta')}')
x=$(( 2*a ))
y=`echo "scale=2;$intermediate / $x" | bc -l`
root1=`echo -$b + $y  | bc -l`
echo "First Root is : $root1"
root2=`echo -$b - $y | bc -l`
echo "Second Root is : $root2"
