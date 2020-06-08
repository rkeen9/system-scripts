#!/bin/bash
# Called by DWM when the volume up key is pressed
# only adjusts volume for bluetooth
source /home/robert/scripts/VARIABLES
pamixer --sink $SINK -i 2
/home/robert/scripts/refresh_bar.sh
