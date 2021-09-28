#!/bin/sh
current=$(cat /sys/class/backlight/intel_backlight/brightness)
new=$((10 + current))
if [ $new -ge 187 ] ; then
    echo 187 > /sys/class/backlight/intel_backlight/brightness
else
    echo $new > /sys/class/backlight/intel_backlight/brightness
fi

