#!/bin/bash
checkBluetooth() {
    str=$(hcitool con | grep '>.*')
    if [ ! -z "$str" -a "$str" != "" ] ; then
        echo "con"
    else
        echo "not con"
    fi
}

checkBluetooth
