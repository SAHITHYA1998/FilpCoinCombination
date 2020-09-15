#! /bin/bash 
echo "Welcome to Flip coin combination"
times=0
declare -A headTail1

while [ $times -lt 100 ]
do
randomNum1=$(( RANDOM % 2  ))
randomNum2=$(( RANDOM % 2  ))

if [ $randomNum1 -eq 0 -a $randomNum2 -eq 0 ]
then

        val=${headTail1["TT"]}
        val=$(($val+1))

        headTail1["TT"]=$val
elif [ $randomNum1 -eq 0 -a $randomNum2 -eq 1 ]
then
        val=${headTail1["TH"]}
        val=$(($val+1))

        headTail1["TH"]=$val
elif [ $randomNum1 -eq 1 -a $randomNum2 -eq 0 ]
then

        val=${headTail1["HT"]}
        val=$(($val+1))

        headTail1["HT"]=$val
elif [ $randomNum1 -eq 1 -a $randomNum2 -eq 1 ]
then
        val=${headTail1["HH"]}
        val=$(($val+1))

        headTail1["HH"]=$val

fi
   times=$(($times+1))
done

hhC=0
hhC=${headTail1["HH"]}

ttC=0
ttC=${headTail1["TT"]}

htC=0
htC=${headTail1["HT"]}

thC=0
thC=${headTail1["TH"]}

if [ $hhC -gt 0 ]
then
        HHper=$((100*$hhC/$times))
fi
if [ $htC -gt 0 ]
then
        HTper=$((100*$htC/$times))
fi
if [ $thC -gt 0 ]
then
        THper=$((100*$thC/$times))
fi
if [ $ttC -gt 0 ]
then
        TTper=$((100*$ttC/$times))
fi

echo "HH % : $HHper"
echo "HT % : $HTper"
echo "TH % : $THper"
echo "TT % : $TTper"

