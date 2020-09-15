

#! /bin/bash 
echo "Welcome to Flip coin combination"

randomNum=$(( RANDOM % 2  ))
if [ $randomNum -eq 1 ]
then
        echo "HEAD"
else
        echo "TAIL"
fi

