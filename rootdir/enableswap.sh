#!/bin/sh
# Lenovo wuzb1 2016-04-06 KUNGFUN-701 set default disksize 512M
echo 536870912 > /sys/block/zram0/disksize
/system/bin/mkswap /dev/block/zram0
/system/bin/swapon /dev/block/zram0
