#!/bin/dash

echo Hi user
echo What is your age ?
read age

if [ $age -ge 18 ]
then
	echo you can vote!
else
	echo sorry 
fi
