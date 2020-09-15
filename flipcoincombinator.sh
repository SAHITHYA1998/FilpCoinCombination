
#! /bin/bash 
echo "Welcome to Flip coin combination"
times=0
declare -A headTail2
while [ $times -lt 100 ]
do
randomNum1=$(( RANDOM % 2  ))
randomNum2=$(( RANDOM % 2  ))
randomNum3=$(( RANDOM % 2  ))
if [ $randomNum1 -eq 0 -a $randomNum2 -eq 0 -a $randomNum3 -eq 0 ]
then
        val=${headTail2["TTT"]}
        val=$(($val+1))
        headTail2["TTT"]=$val
elif [ $randomNum1 -eq 0 -a $randomNum2 -eq 1 -a $randomNum3 -eq 1 ]
then
        val=${headTail2["THH"]}
        val=$(($val+1))
        headTail2["THH"]=$val
elif [ $randomNum1 -eq 1 -a $randomNum2 -eq 0 -a $randomNum3 -eq 0 ]
then

        val=${headTail2["HTT"]}
        val=$(($val+1))
        headTail2["HTT"]=$val
elif [ $randomNum1 -eq 0 -a $randomNum2 -eq 1 -a $randomNum3 -eq 0 ]
then
        val=${headTail2["THT"]}
        val=$(($val+1))
        headTail2["THT"]=$val
elif [ $randomNum1 -eq 1 -a $randomNum2 -eq 0 -a $randomNum3 -eq 1 ]
then
        val=${headTail2["HTH"]}
        val=$(($val+1))
        headTail2["HTH"]=$val
elif [ $randomNum1 -eq 1 -a $randomNum2 -eq 1 -a $randomNum3 -eq 0 ]
then
        val=${headTail2["HHT"]}
        val=$(($val+1))
        headTail2["HHT"]=$val
elif [ $randomNum1 -eq 0 -a $randomNum2 -eq 0 -a $randomNum3 -eq 1 ]
then
        val=${headTail2["TTH"]}
        val=$(($val+1))

        headTail2["TTH"]=$val

elif [ $randomNum1 -eq 1 -a $randomNum2 -eq 1 -a $randomNum3 -eq 1 ]
then
        val=${headTail2["HHH"]}
        val=$(($val+1))

        headTail2["HHH"]=$val
fi
 times=$(($times+1))
done

hhhC=0
hhhC=${headTail2["HHH"]}

tttC=0
tttC=${headTail2["TTT"]}

httC=0
httC=${headTail2["HTT"]}

thhC=0
thhC=${headTail2["THH"]}

hthC=0
hthC=${headTail2["HTH"]}

thtC=0
thtC=${headTail2["THT"]}

hhtC=0
hhtC=${headTail2["HHT"]}

tthC=0
tthC=${headTail2["TTH"]}


if [ $hhhC -gt 0 ]
then
        HHHper=$((100*$hhhC/$times))
fi

if [ $hthC -gt 0 ]
then
        HTHper=$((100*$hthC/$times))
fi

if [ $thtC -gt 0 ]
then
        THTper=$((100*$thtC/$times))
fi

if [ $tttC -gt 0 ]
then
        TTTper=$((100*$tttC/$times))
fi

if [ $thhC -gt 0 ]
then
        THHper=$((100*$thhC/$times))
fi

if [ $hhtC -gt 0 ]
then
        HHTper=$((100*$hhtC/$times))
fi

if [ $tthC -gt 0 ]
then
        TTHper=$((100*$tthC/$times))
fi

if [ $httC -gt 0 ]
then
        HTTper=$((100*$httC/$times))
fi

echo "HHT % : $HHTper"
echo "TTT % : $TTTper"
echo "HHH % : $HHHper"
echo "HTH % : $HTHper"
echo "THH % : $THHper"
echo "HTH % : $HTHper"
echo "HTT % : $HTTper"
echo "THT % : $THTper"
