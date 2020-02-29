#!/bin/bash
checkBluetooth() {
    str=$(hcitool con | grep '>.*')
    if [ ! -z "$str" -a "$str" != "" ] ; then
        return 1
    else
        return 0
    fi
}

checkBluetooth
bluetooth=$?
if [ $bluetooth -eq 1 ] ; then
    echo "bluetooth connected"
else
    echo "not connected"
fi

amixer -D default sset Master 1%- unmute
/home/robert/scripts/refresh_bar.sh 
