#!/bin/bash
# ran by DWM when the volume down key is pressed 
source /home/robert/scripts/VARIABLES
pamixer --sink $SINK -d 2
/home/robert/scripts/refresh_bar.sh
