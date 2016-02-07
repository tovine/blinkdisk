#!/bin/bash

# Small utility script made to help identify physical drives

if [ -z $1 ]; then
	echo "No arguments specified - specify target drive with name (sdX) or path (/dev/sdX)"
	exit 1
fi

# Period/interval in seconds
PERIOD=1

if [[ $2 =~ ^[0-9]+$ && $2 > 0 ]]; then
	PERIOD=$2
fi

if [[ "$1" =~ ^sd[a-z]$ ]];then
	DEVICE=/dev/$1
elif [[ "$1" =~ ^/dev/sd[a-z]$ ]];then
	DEVICE=$1
else
	echo "Invalid argument"
	exit 1
fi

echo "Flashing device $DEVICE with $PERIOD sec interval (press Ctrl-C to stop)"
while true; do
	timeout $PERIOD cat $DEVICE > /dev/null
	sleep $PERIOD
done
