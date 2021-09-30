#!/bin/bash
# xrandr --newmode "1920x1080"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
# xrandr --addmode Virtual1 "1920x1080"
# xrandr --output Virtual1 --mode 1920x1080 
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
setxkbmap -option caps:swapescape
export _JAVA_AWT_WM_NONREPARENTING=1
xcompmgr &
redshift -l 48.439:-127.357 &
fcitx &
unclutter -idle 1 -jitter 2 -root &
./scripts/status_bar.sh &
sudo wpa_supplicant -B -i wlp2s0 -c /etc/wpa_supplicant/wpa_supplicant.conf
# while :; do
#     ssh-agent dwm || break
# done
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
feh --bg-scale ~/Desktop/wall3.jpg
exec dbus-launch dwm
