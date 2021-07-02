#!/bin/bash
while getopts a:bc: flag
do
	case "${flag}" in
		a) a_value=${OPTARG};;
		b) b_value=true;;
		c) c_value=${OPTARG};;
	esac
done

echo "-a flag is set to $a_value"

if  [ -n "$b_value" ]; then
	echo "if -b flag is present we will print this"
fi

echo "-c flag is set to $c_value"
