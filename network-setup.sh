#!/bin/bash
# script for quickly setting up wifi networks with WPA Supplicant
# currently a work in progress
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

get_networks() {
    iwlist wlp2s0 scan | grep ESSID | tr ' ' '-' 
}

echo "${green}Scanning for networks...${reset}"
networks=($(get_networks))
while [[ $count -lt ${#networks} ]] ; do
    echo "${count}: ${networks[${count}]}"
    count=`expr $count + 1`
done
echo "${green}Which network would you like to connect to?${reset}"
