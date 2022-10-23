#!/bin/bash
sink=$(pamixer --list-sinks | grep -P "\d" | sed 's/\".*\..*\" //g' | dmenu | sed "s/ \".*\"//g")
str=$(grep "SINK=[0-9]" /home/rob/scripts/VARIABLES)
if [ ! -z "$str" -a "$str" != "" ] ; then
    sed -i "s/SINK=[0-9]\+/SINK=$sink/g" /home/rob/scripts/VARIABLES
else
    sed -i "s/SINK=/SINK=$sink/g" /home/rob/scripts/VARIABLES
fi
