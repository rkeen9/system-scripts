#!/bin/bash
# ran by DWM when the volume down key is pressed 
source /home/rob/scripts/VARIABLES
pamixer --sink $SINK -d 2
/home/rob/scripts/refresh_bar.sh
