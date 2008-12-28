#!/bin/bash

# 可以显示百分比的 cp 命令。

PARAM_LIST=$*
PARAM_NUM=$#
TOTAL_SIZE=0

for((i = 0; i < PARAM_NUM - 1; i++))
do
        [ ! -r $1 ] && echo "Cannot read $1." && exit 1
        SIZE=`du -s $1 | awk '{print $1}'` 
        ((TOTAL_SIZE = TOTAL_SIZE + SIZE)) # ((1+1))
        shift # shift mean?
done

TARGET=$1
START_TIME=`date +%s.%N`

cp -a $PARAM_LIST &
echo -ne "Total size: $TOTAL_SIZE KB - %" # % mean?

while true
do
        LEN_PERCENT=${#PERCENT} # ${#var}

        for((i = 0; i <= LEN_PERCENT; i++))
        do
                echo -ne "\b"
        done

        COPIED=`du -s $TARGET | awk '{print $1}'` # cut -f1
        ((PERCENT = COPIED * 100 / TOTAL_SIZE))

        echo -ne "$PERCENT%"
        ((PERCENT == 100)) && END_TIME=`date +%s.%N` && break
done

MB_SECOND=`echo $TOTAL_SIZE/1024/\($END_TIME-$START_TIME\)|bc`
echo " - SPEED: $MB_SECOND MB/s"
