#!/bin/sh
amixer set Capture toggle
str=$(amixer sget Capture | grep "off")

if [ ! -z "$str" -a "$str" != "" ] ; then
        echo on > /sys/class/sound/ctl-led/mic/mode
else
        echo off > /sys/class/sound/ctl-led/mic/mode
fi

