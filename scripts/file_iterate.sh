#!/bin/bash

names="/home/roberto/Documents/scripts/name"

for name in $(cat $names)
do
	echo Characters of my name $name
done
