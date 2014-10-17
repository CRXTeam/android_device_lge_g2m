#!/bin/sh

VENDOR=lge
DEVICE=d620

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-blobs.txt | grep -v ^# | grep -v ^$ `; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    adb pull /system/$FILE $BASE/$FILE
done

./setup-makefiles.sh

echo -n "Press any key to continue…"
CFG=`stty -g`
stty -echo -icanon
dd count=1 1>/dev/null 2>&1
stty $CFG
echo
