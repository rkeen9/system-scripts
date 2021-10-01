#!/bin/sh
current=$(cat /sys/class/backlight/intel_backlight/brightness)
new=$((100 + current))
if [ $new -ge 4437 ] ; then
    echo 4437 > /sys/class/backlight/intel_backlight/brightness
else
    echo $new > /sys/class/backlight/intel_backlight/brightness
fi

