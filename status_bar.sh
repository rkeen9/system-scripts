#!/bin/bash
# Status bar script for DWM
delim="|"
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`


wifiStatus() {\
    if [[ "$(ping -c 1 8.8.8.8 | grep '100% packet loss' )" != "" ]]; then
        echo '${green}🌐${reset}' 
        exit 1
    else
        echo '${red}🌐${reset}' 
    fi
}

status() { \
    # echo -e "${green}◀${reset}"
	echo " Bluetooth Volume:"
    pactl list sinks | grep '^[[:space:]]Volume:' |     head -n $(( $SINK + 2 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'
    echo "%"
    echo "$delim"
    echo " Speaker Volume:"
	awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master) 
	echo "$delim"
	acpi
	echo "$delim"
    # echo "$(wifiStatus)"
    # echo "$delim"
	date +%c

}

while true ; do
    xsetroot -name "$(status | tr '\n' ' ')"
    sleep 1s
done
