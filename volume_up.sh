#!/bin/bash
# Called by DWM when the volume up key is pressed
# only adjusts volume for bluetooth
pactl set-sink-volume bluez_sink.58_B3_FC_D1_41_BA.a2dp_sink +2%
/home/robert/scripts/refresh_bar.sh
