# /bin/bash
headCount=0
count=0
echo -e "How many times you want to flip coin : \c"
read times
while(( $count < $times ))
do
coin=0.$RANDOM
if (( $(echo $coin .5 | awk '{if ($1 > $2) print 1; else print 0}')  ));
then
	(( headCount++ ))
fi
(( count++ ))
done
echo "Head Count is : "$headCount
echo "Tail Count is : "$(( $count - $headCount ))
per=`echo "scale=2;$headCount / $count" | bc -l`
perc=`echo "$per*100" | bc -l`
echo "Percentage of Heads is : "$perc

