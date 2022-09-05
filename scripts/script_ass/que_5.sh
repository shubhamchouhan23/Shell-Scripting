#!/bin/bash
a=$1


while [$a -lt $2] 
do
	echo "$a"
	a=$((a++1))      
done

