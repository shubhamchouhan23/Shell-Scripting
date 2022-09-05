#!/bin/bash
seconds=0
echo -n "Enter time in seconds: "
read seconds

while [ $seconds -lt 0 ]
do
	echo " Re-input , Negative value  is printed "
	read seconds
done			

hours=$((seconds / 3600))
minutes=$((seconds % 3600/60))
seconds=$((seconds % 60))

echo  "$hours:$minutes:$seconds"

