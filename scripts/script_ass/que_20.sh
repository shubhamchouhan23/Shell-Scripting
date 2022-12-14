#!/bin/bash



echo  "----------------------------------------------------------------------------"
echo  "                Current User and Login Name                "
	echo "$USER"
    	U="$USER"	
	_user="$(id -u -n)"
	
	echo "Username : $_user"
	echo " Currently logged Username $U "
echo  "============================================================================"
echo  "                Current Shell                       "
echo   "$SHELL"
echo  "============================================================================"
echo  "                    Home Directory                     "
echo  "$HOME"
echo  "============================================================================"
echo  "                    Operating System Type                     "
echo "$OSTYPE"
echo  "============================================================================"
echo  "                Path Setting                         "
echo   "$PATH"
echo  "============================================================================"
echo  "                Current Working Directory                 "
echo "`pwd`"
echo  "============================================================================"
echo  "                    Number of Logged Users                   "
echo  "                     `who | wc -l`                           "
echo  "============================================================================"

echo "                Operating System Information :: "
echo  "----------------------------------------------------------------------------"
echo  "                OS Name                         "
echo  "`uname -o`"
echo  "----------------------------------------------------------------------------"
echo  "                    OS Version                         "
echo  "`cat /proc/version`"
echo  "----------------------------------------------------------------------------"
echo  "                    OS Release Number                    "
echo  "`lsb_release -a`"
echo  "----------------------------------------------------------------------------"
echo  "                Kernel Version                     "
echo "`uname -rv`"
echo  "============================================================================"
echo  "                Shell List                          "
echo "`cat -n /etc/shells`"
echo  "============================================================================"
echo "                Mouse Setting                      "
echo "`xinput --list-props 9`"
echo  "============================================================================"
echo  "                   CPU Information                        "
echo "`cat /proc/cpuinfo`"
echo  "============================================================================"
 
echo  "                Memory Information                    "
echo "`cat /proc/meminfo`"
echo  "============================================================================"

echo  "                Hard Disk Size                     "
echo  "`df -h`"
echo  "============================================================================"

echo  "                Model:                            "
echo  "`lsblk`"

echo  "----------------------------------------------------------------------------"
echo  "                    Cache size:                         "
echo  "`lscpu | grep cache`"
echo  "============================================================================"
echo  "                Mounted FileSystem Information                     "
echo  "`findmnt`"
 
