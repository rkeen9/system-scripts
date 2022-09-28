#!/bin/sh
filename=$(date +"%s")
scrot -s /home/robert/images/resolution/$filename.png
res=$(file /home/robert/images/resolution/$filename.png | grep -Po "(?<=: PNG image data, )[0-9x\s]+(?=,)")
hres=$(echo $res | grep -Po "[0-9]+(?=\sx)")
vres=$(echo $res | grep -Po "(?<=x\s)[0-9]+")
modeline=$(cvt $hres $vres | grep -Po "(?<=Modeline\s).*" | sed 's/_/-/g')
modename=$(echo $modeline | grep -Po "\".+\"")
output=$(xrandr | grep -Po "HDMI-[0-9]")
xrandr --newmode $modeline
xrandr --addmode $output $modename
echo "xrandr --output $output --mode $modename"
