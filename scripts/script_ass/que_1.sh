#!/bin/bash
while
do
read INPUT_STRING
case $INPUT_STRING in
	sum)
		 echo -e "Sum of two numbers :\c"
	         echo `expr $1 + $2`
		 exit 1
		 ;;
	 usage)
		if [ $# -ne 2 ]
		then
			echo "Syntax Error"
			echo "$0: num1 num2 are not specified" >&1
	        	echo " Usage - $0 num1 num2 "
        		exit 1
		fi
		break 
		;;
	 *)
		 echo " Invalid string "
		 exit 1	
		 ;;
	
	esac
done
exit 0
:'if [ $# -ne 2 ]
then
	echo "Syntax Error"
	echo " Usage - $0 "
	exit 1
else
	echo -e "Sum of two numbers :\c"
	echo `expr $1 + $2`

fi
'
