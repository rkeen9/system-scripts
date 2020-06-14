#!/bin/bash
# Called by DWM when the volume up key is pressed
source /home/robert/scripts/VARIABLES
pamixer --sink $SINK -i 2
/home/robert/scripts/refresh_bar.sh
