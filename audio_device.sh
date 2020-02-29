#!/bin/bash
str=$(hcitool con | grep '>.*')
if [ ! -z "$str" -a "$str" != "" ] ; then
    echo "bluetooth is connected"
else
    echo "bluetooth is not connected"
fi

