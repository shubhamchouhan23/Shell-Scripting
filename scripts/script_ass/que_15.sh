#!/bin/bash

# Function to clear the screen
cls()
{
    clear
    echo "Clear screen, press a key . . ."
    read
    return
}


# Function to show files in current directory

show_ls()
{  
    ls
    echo "list files, press a key . . ."
    read
    return
}


# Function to start mc

start_mc()
{
    if which mc > /dev/null ; then
            mc
            echo "Midnight commander, Press a key and Hit Enter"
            read
    else
            echo "Error: Midnight commander not installed, Press a key and Hit Enter"
            read
    fi                 
    return
}


# Function to start editor
start_ed()
{
    ced=$1
    if which $ced > /dev/null ; then
            $ced
            echo "$ced, Press a key and Hit Enter"
            read
    else
            echo "Error: $ced is not installed or no such editor exist, Press a key and Hit Enter"
            read
    fi                 
    return
}


# Function to print help

Help()
{
               echo "Usage: $0 -c -d -m -v {editor name}";
               echo "Where -c clear the screen";
               echo "      -d show dir";
               echo "      -m start midnight commander shell";
               echo "      -e {editor}, start {editor} of your choice";
               return
}

#check for sufficient arguments
if [ $# -eq 0 ] ; then
    Help
    exit 1
fi   



while getopts cdme: opt
do
    case "$opt" in
            c) cls;;
            d) show_ls;;
            m) start_mc;;
            e)  start_ced;;
            \?) Help;
	   	 exit 1;;
    esac
done   
