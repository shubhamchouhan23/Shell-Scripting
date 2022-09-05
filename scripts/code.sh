#!/bin/bash

echo "Regulator_number,Name,Microvolts,State">> /data/local/tmp/demo_reading.csv
i=0
while true
do
	if [[ $i -lt 83 ]]
	then
		path=/sys/class/regulator/*
		Regulator_number=$path
		Name=`cat ${Regulator_number}/microvolts`
		State=`cat ${i}/state`
		echo "Regulator_number,Name,Microvolts,State">> /data/local/tmp/demo_reading.csv
		i=$(( $i+1 ))
	else
		exit
	fi
done
