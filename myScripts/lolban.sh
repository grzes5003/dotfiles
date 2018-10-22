#!/bin/bash

if [ $# -eq 0 ];then
	echo "no arguments"
	exit
fi
	
toilet -f bigmono12.tlf $1 | lolcat

