#!/usr/bin/env bash

if [ "$(playerctl status >>/dev/null 2>&1; echo $?)" == "1" ]
then
	echo ""
	exit 0
fi


if [ "$(playerctl status)" == "Playing" ]
then
	echo ""
else
	echo ""
fi

