#!/bin/sh

FILE=/sys/kernel/config/usb_gadget/g1/configs/c.1/mass_storage.usb0/lun.0/file

if [ -z "$1" ] ; then
	echo "EJECT "`cat $FILE`
	sudo sh -c "echo '' > $FILE"
elif [ -e "$1" ] ; then
	sudo sh -c "readlink -f $1 > $FILE"
	echo "INSERT "`cat $FILE`
else
	echo "Usage: $0 /path/to/disk.img"
	exit 1
fi

