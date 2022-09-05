#!/bin/bash

echo Hey choose an option
echo 
echo 1=show date
echo 2=list files in curr dir
echo 3=show current path

read choice

case $choice in
	1)date;hostnamectl;cal;pwd;ls;hostname;lsb_release -a,lsb_release -d,cat /etc/issue;cat /etc/os-release;;
	2)lsb_release -d;;
	3)pwd;;
	*)echo "Invalid Choice"
		exit 1
		;;
	
esac		

exit 0
