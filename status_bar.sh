#!/bin/bash
# Status bar script for DWM
delim="|"

reset="\x01"
red="\x03"
green="\x04"
blue="\x05"

redText() {
    echo -ne "${red}$1${reset}"
}

greenText() {
    echo -ne "${green}$1${reset}"
}

blueText() {
    echo -ne "${blue}$1${reset}"
}

wifiStatus() {
    str=$(ping -c 1 8.8.8.8 | grep "100% packet loss" ) # Checks if internet is connected
    if [ ! -z "$str" -a "$str" != "" ] ; then
        redText '🌐 ' 
    else
        greenText '🌐 ' 
    fi
    echo "$delim"
}

volume() {
    str=$(hcitool con | grep '[<>].*') # Checks if bluetooth is connected
    if [ ! -z "$str" -a "$str" != "" ] ; then
        blueText " ᛒ🔊 "
        pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 2 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'
        echo "%"
    else
        echo "🔊 "
        amixer sget Master | awk -F"[][]" '/dB/ { print $2 }' 
    fi 
    echo "$delim"
}

battery() {
    str=$(acpi | grep -o "Charging") # Checks if power is connected
    if [ ! -z "$str" -a "$str" != "" ] ; then
        echo "🔌🗲 "
    else
        echo "🔋🗲 "
    fi 
    acpi | grep -Po "\d{1,3}%"
    echo "$delim"
}

brightness() {
    echo "☀"
    xbacklight | grep -o ".*\." | tr -d "/."
    echo "%"
    echo "$delim"
}

status() { 
    echo "$delim"
    echo $(wifiStatus)
    echo $(volume)
    echo $(brightness)
    echo $(battery)    
    date +%c | grep ".* [AP]M"
}

while true ; do
    xsetroot -name "$(status | tr '\n' ' ')"
    sleep 1s
done
