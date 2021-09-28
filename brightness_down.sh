#!/bin/sh
current=$(cat /sys/class/backlight/intel_backlight/brightness)
if [ $current -le 10 ] ; then
    echo 0 > /sys/class/backlight/intel_backlight/brightness
else
    echo $((current - 5)) > /sys/class/backlight/intel_backlight/brightness
fi

