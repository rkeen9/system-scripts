#!/bin/bash
# xrandr --newmode "1920x1080"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
# xrandr --addmode Virtual1 "1920x1080"
# xrandr --output Virtual1 --mode 1920x1080 
feh --bg-scale ~/Desktop/spooky-forest.jpg
setxkbmap -option caps:swapescape
export _JAVA_AWT_WM_NONREPARENTING=1
xcompmgr &
fluxgui &
unclutter -idle 1 -jitter 2 -root &
./scripts/status_bar.sh &
# while :; do
#     ssh-agent dwm || break
# done
exec dbus-launch dwm
