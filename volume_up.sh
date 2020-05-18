#!/bin/bash
# Called by DWM when the volume up key is pressed
# only adjusts volume for bluetooth
source /home/robert/scripts/VARIABLES
pamixer --sink $SINK -i 2
# pactl set-sink-volume 1 +2%
# checkBluetooth() {
#     str=$(hcitool con | grep '[<>].*')
#     if [ ! -z "$str" -a "$str" != "" ] ; then
#         return 1
#     else
#         return 0
#     fi
# }
# 
# checkBluetooth
# bluetooth=$?
# if [ $bluetooth -eq 1 ] ; then
#     pactl set-sink-volume bluez_sink.58_B3_FC_D1_41_BA.a2dp_sink +2%
# else
#     amixer -D default sset PCM 1%+ unmute
# fi
/home/robert/scripts/refresh_bar.sh
