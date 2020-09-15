#! /bin/bash 
declare -A headTail
declare -A headTail2
declare -A headTail3
echo "Welcome to flip coin combination"
randomNum=$(( RANDOM % 2  ))
if [ $randomNum -eq 1 ]
then
        echo "HEAD"
else
        echo "TAIL"
fi
function singlet(){
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
}
function sortSinglet(){
if [ $headPer -gt $tailPer ]
then
        echo Head has won by $headPer%
else
        echo Tail has won by $tailPer%
fi
}

function doublet(){
times=0

while [ $times -lt 100 ]
do
randomNum1=$(( RANDOM % 2  ))
randomNum2=$(( RANDOM % 2  ))

if [ $randomNum1 -eq 0 -a $randomNum2 -eq 0 ]
then

        val=${headTail2["TT"]}
        val=$(($val+1))

        headTail2["TT"]=$val
elif [ $randomNum1 -eq 0 -a $randomNum2 -eq 1 ]
then
        val=${headTail2["TH"]}
        val=$(($val+1))

        headTail2["TH"]=$val
elif [ $randomNum1 -eq 1 -a $randomNum2 -eq 0 ]
then

        val=${headTail2["HT"]}
        val=$(($val+1))

        headTail2["HT"]=$val
elif [ $randomNum1 -eq 1 -a $randomNum2 -eq 1 ]
then
        val=${headTail2["HH"]}
        val=$(($val+1))

        headTail2["HH"]=$val
fi
   times=$(($times+1))
done

hhC=0
hhC=${headTail2["HH"]}

ttC=0
ttC=${headTail2["TT"]}

htC=0
htC=${headTail2["HT"]}

thC=0
thC=${headTail2["TH"]}

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
}

function sortDoublet(){
if [ $HHper -gt $HTper -a $HHper -gt $THper -a $HHper -gt $TTper ]
then
        echo Doublet winner is HH with $HHper%

elif [ $HTper -gt $HHper -a $HTper -gt $THper -a $HTper -gt $TTper ]
then
        echo Doublet winner is HT with $HTper%
elif [ $THper -gt $HHper -a $THper -gt $HTper -a $THper -gt $TTper ]
then
        echo Doublet winner is TH with $THper%
elif [ $TTper -gt $HHper -a $TTper -gt $HTper -a $TTper -gt $THper ]
then
        echo Doublet winner is TT with $TTper%
fi
}

function triplet(){
times=0
while [ $times -lt 100 ]
do
randomNum1=$(( RANDOM % 2  ))
randomNum2=$(( RANDOM % 2  ))
randomNum3=$(( RANDOM % 2  ))
if [ $randomNum1 -eq 0 -a $randomNum2 -eq 0 -a $randomNum3 -eq 0 ]
then
        val=${headTail3["TTT"]}
        val=$(($val+1))
        headTail3["TTT"]=$val
elif [ $randomNum1 -eq 0 -a $randomNum2 -eq 1 -a $randomNum3 -eq 1 ]
then
        val=${headTail2["THH"]}
        val=$(($val+1))
        headTail3["THH"]=$val
elif [ $randomNum1 -eq 1 -a $randomNum2 -eq 0 -a $randomNum3 -eq 0 ]
then

        val=${headTail3["HTT"]}
        val=$(($val+1))
        headTail3["HTT"]=$val
elif [ $randomNum1 -eq 0 -a $randomNum2 -eq 1 -a $randomNum3 -eq 0 ]
then
        val=${headTail3["THT"]}
        val=$(($val+1))
        headTail3["THT"]=$val
elif [ $randomNum1 -eq 1 -a $randomNum2 -eq 0 -a $randomNum3 -eq 1 ]
then
        val=${headTail3["HTH"]}
        val=$(($val+1))
        headTail3["HTH"]=$val
elif [ $randomNum1 -eq 1 -a $randomNum2 -eq 1 -a $randomNum3 -eq 0 ]
then
        val=${headTail3["HHT"]}
 val=$(($val+1))
        headTail3["HHT"]=$val

elif [ $randomNum1 -eq 0 -a $randomNum2 -eq 0 -a $randomNum3 -eq 1 ]
then
        val=${headTail3["TTH"]}
        val=$(($val+1))

        headTail3["TTH"]=$val

elif [ $randomNum1 -eq 1 -a $randomNum2 -eq 1 -a $randomNum3 -eq 1 ]
then
        val=${headTail3["HHH"]}
        val=$(($val+1))

        headTail3["HHH"]=$val
fi
 times=$(($times+1))
done

hhhC=0
hhhC=${headTail3["HHH"]}

tttC=0
tttC=${headTail3["TTT"]}

httC=0
httC=${headTail3["HTT"]}

thhC=0
thhC=${headTail3["THH"]}

hthC=0
hthC=${headTail3["HTH"]}
thtC=0
thtC=${headTail3["THT"]}

hhtC=0
hhtC=${headTail3["HHT"]}

tthC=0
tthC=${headTail3["TTH"]}


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
}
function sortTriplet(){
if [ $HHHper -gt $HHTper -a $HHHper -gt $HTHper -a $HHHper -gt $TTTper -a $HHHper -gt $THTper -a $HHHper -gt $HTTper -a $HHHper -gt $THHper -a $HHHper -gt $TTHper ]
then
        echo triplet winner is HHH with $HHHper%

elif [ $TTTper -gt $HHHper -a $TTTper -gt $THTper -a $TTTper -gt $HTTper -a $TTTper -gt $THHper -a $TTTper -gt $TTHper -a $TTTper -gt $HHTper -a $TTTper -gt $HTHper ]
then
        echo triplet winner is TTT with $TTTper%
elif [ $HTHper -gt $HHHper -a $HTHper -gt $TTTper -a $HTHper -gt $THTper -a $HTHper -gt $HTTper -a $HTHper -gt $THHper -a $HTHper -gt $TTHper -a $HTHper -gt $HHTper ]
then
        echo triplet winner is HTH with $HTHper%

elif [ $THTper -gt $HHHper -a $THTper -gt $TTTper -a $THTper -gt $HTHper -a $THTper -gt $HTTper -a $THTper -gt $THHper -a $THTper -gt $TTHper -a $HTHper -gt $HHTper ]
then
        echo triplet winner is HTH with $THTper%
elif [ $HTTper -gt $HHHper -a $HTTper -gt $TTTper -a $HTTper -gt $THTper -a $HTTper -gt $HTHper -a $HTTper -gt $THHper -a $HTTper -gt $TTHper -a $HTTper -gt $HHTper ]
then
        echo triplet winner is HTT with $HTTper%
elif [ $THHper -gt $HHHper -a $THHper -gt $TTTper -a $THHper -gt $THTper -a $THHper -gt $HTTper -a $THHper -gt $HTHper -a $THHper -gt $TTHper -a $HTHper -gt $HHTper ]
then
        echo triplet winner is THH with $THHper%
elif [ $TTHper -gt $HHHper -a $TTHper -gt $TTTper -a $TTHper -gt $THTper -a $TTHper -gt $HTTper -a $TTHper -gt $TTHper -a $TTHper -gt $HTHper -a $TTHper -gt $HHTper ]
then
        echo triplet winner is TTH with $TTHper%
elif [ $HHTper -gt $HHHper -a $HHTper -gt $TTTper -a $HHTper -gt $THTper -a $HHTper -gt $HTTper -a $HHTper -gt $THHper -a $HHTper -gt $TTHper -a $HHTper -gt $HTHper ]
then
        echo triplet winner is HHT with $HHTper%
fi
}


read -p "Enter your choice for singlet doublet and triplet :  "  ch

case $ch in
        singlet)
                singlet
                sortSinglet;;
        doublet)
                doublet
                sortDoublet;;

        triplet)
                triplet
                sortTriplet;;
        *)
        echo "invalid input"
        ;;
esac
