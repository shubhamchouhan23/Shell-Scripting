#!/bin/bash

if [ $# -ne 3 ]
then
echo "$0: n1 n2 n3 arguments are not supplied" >&2
exit 1
fi

n1=$1
n2=$2
n3=$3

if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ]
then
echo "$n1 is biggest number"
elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ]
then
echo "$n2 is biggest number"
elif [ $n3 -gt $n1 ] && [ $n3 -gt $n2 ]
then
echo "$n3 is biggest number"
elif [ $1 -eq $2 ] && [ $1 -eq $3 ] && [ $2 -eq $3 ]
then
echo "All the three numbers are equal"
else
echo "Don't know which number is bigger among three numbers"
fi
