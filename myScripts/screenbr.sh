#!/bin/bash

if [ $# -eq "0" ]; then
	echo "no arguments - exiting"
	exit
fi

if [ $1 -eq "night" ]; then
	xrandr --output LVDS-1 --brightness 0.5
elif [ $1 -eq "day" ]; then
	xrandr --output LVDS-1 --brightness 1
else
	xrandr --output LVDS-1 --brightness $1
fi

echo "brightness has been changed"
