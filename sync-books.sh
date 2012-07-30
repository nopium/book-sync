#!/bin/bash

#date >> /nop.log

SRC=/Volumes/EBOOK/sync/
DST=~/Documents/EBOOK/

if [ ! -d "$SRC" ]; then
    sleep 30
fi

if [ ! -d "$SRC" ]; then
     exit 0
fi

rsync --recursive -aq $SRC $DST 

CNT=`rsync --recursive --stats -a $DST $SRC | grep "Number of files transferred" | awk '{print $5}'`

/usr/local/bin/growlnotify -m "Uploaded $CNT new books to $SRC"

exit 0
