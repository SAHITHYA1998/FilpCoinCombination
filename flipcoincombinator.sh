

#! /bin/bash 
echo "Welcome to Flip coin combination"

declare -A headTail

times=0

while [ $times -lt 100 ]
do
randomNum=$(( RANDOM % 2  ))


if [ $randomNum -eq 1 ]
then
        val=${headTail["Head"]}
        val=$(($val+1))

        headTail["Head"]=$val
else
        val=${headTail["Tail"]}
        val=$(($val+1))

        headTail["Tail"]=$val

fi
 times=$(($times+1))
done

headC=${headTail["Head"]}
tailC=${headTail["Tail"]}

headPer=$((100*$headC/$times))

tailPer=$((100*$tailC/$times))

echo "Head % is : $headPer"
echo "Tail % is : $tailPer"
