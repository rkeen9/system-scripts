#!/bin/sh
current=$(cat /sys/class/backlight/intel_backlight/brightness)
if [ $current -le 100 ] ; then
    echo 0 > /sys/class/backlight/intel_backlight/brightness
else
    echo $((current - 100)) > /sys/class/backlight/intel_backlight/brightness
fi

