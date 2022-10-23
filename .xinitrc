#!/bin/bash
# xrandr --newmode "1920x1080"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
# xrandr --addmode Virtual1 "1920x1080"
# xrandr --output Virtual1 --mode 1920x1080 
#export GTK_IM_MODULE=fcitx
#export QT_IM_MODULE=fcitx
#export XMODIFIERS=@im=fcitx
#fcitx &
## STARTUP SCRIPTS
export QT_AUTO_SCREEN_SCALE_FACTOR=1.5
export _JAVA_AWT_WM_NONREPARENTING=1
# Set Wallpaper:
feh --bg-scale ~/Desktop/wall.jpg
# Swap Capslock and escape:
setxkbmap -option caps:swapescape
# Enable two finger right click:
xinput set-prop "PIXA3854:00 093A:0274 Touchpad" "libinput Click Method Enabled" 0 1 
# Automount USBs:
udiskie &
# Needed for window transparency
xcompmgr &
# Blue light filter
redshift -l 48.439:-127.357 &
# Hide cursor when not in use
unclutter -idle 1 -jitter 2 -root &
# Status Bar
./scripts/status_bar.sh &
# Load Xresources. Currently configs DPI scaling.
xrdb -merge ~/.Xresources
# Launch DWM
exec dbus-launch dwm
# while :; do
#     ssh-agent dwm || break
# done
