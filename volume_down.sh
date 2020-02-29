#!/bin/bash
# ran by DWM when the volume down key is pressed 
# only adjusts bluetooth volume 
checkBluetooth() {
    str=$(hcitool con | grep '[<>].*')
    if [ ! -z "$str" -a "$str" != "" ] ; then
        return 1
    else
        return 0
    fi
}

checkBluetooth
bluetooth=$?
if [ $bluetooth -eq 1 ] ; then
    pactl set-sink-volume bluez_sink.58_B3_FC_D1_41_BA.a2dp_sink -2%
else
    amixer -D default sset Master 1%- unmute
fi
/home/robert/scripts/refresh_bar.sh
