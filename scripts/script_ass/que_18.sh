#!/bin/bash


echo "Digital Clock for Linux"
echo "To stop this clock use command kill pid, see above for pid"
echo "Press a key to continue. . ."
clear
while [ 1 ]
do
	ti=`date +" %r"`
	 

	
	 tput cup 33 0 

	echo -n $ti 

#	echo -e -n "\033" 

	sleep 1
done













