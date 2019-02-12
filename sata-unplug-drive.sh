#/bin/bash

#echo 1 > /sys/block/sdb/device/delete


if [ -z $1 ]; then
  echo "No arguments supplied. please supply path of device to remove"
  echo "Usage: $0 /dev/sdb"
  exit 1
fi

DRIVE=$1



if [ -r $DRIVE ]; then
  echo "exists"
  ls -al $DRIVE
else
  echo "drive doesn't exist"
  exit 1
fi

