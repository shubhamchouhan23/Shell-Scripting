#!/bin/bash

echo Hey choose an option
echo 
echo 1=show date
echo 2=list files in curr dir
echo 3=show current path

read choice

case $choice in
	1) date;lsb_release;pwd;ls;hostname) ;;
	2) ls ;;
	3) pwd;;
        *)echo "Invalid Choice"
        
esac



