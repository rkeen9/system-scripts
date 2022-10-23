#!/bin/bash
# Called by DWM when the volume up key is pressed
source /home/rob/scripts/VARIABLES
pamixer --sink $SINK -i 2
/home/rob/scripts/refresh_bar.sh
