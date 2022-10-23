#!/bin/bash
# Called by DWM when the volume up key is pressed
source /home/rob/scripts/VARIABLES
xbacklight -inc 5 
/home/rob/scripts/refresh_bar.sh
