#!/bin/bash
amixer -D default sset Master 1%+ unmute
/home/robert/scripts/refresh_bar.sh 
