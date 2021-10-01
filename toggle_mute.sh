#!/bin/sh
str=$(amixer contents Master | grep "values=off" ) # Checks if muted 
if [ ! -z "$str" -a "$str" != "" ] ; then
    amixer sset Master unmute
else
    amixer sset Master mute
fi

