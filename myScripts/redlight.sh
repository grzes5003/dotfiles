#!/bin/bash

DAY=3000
EVENING=2200
NIGHT=1000

# if no input vars
if [ $# -ne 1 ]; then 
	echo "bad number of arguments"
	exit
fi

pkill redshift

if [ $1 = "day" ] || [ $1 = "1" ]; then
	redshift -O $DAY
elif [ $1 = "evening" ] || [ $1 = "2" ]; then
	redshift -O $EVENING
elif [ $1 = "evening" ] || [ $1 = "3" ]; then
	redshift -O $NIGHT
elif [ $1 -gt 1000 ]; then
	redshift -O $1
else
	echo "bad argument: \n all possible: \n day|1, evening|2, night|3 \n"
	exit
fi

