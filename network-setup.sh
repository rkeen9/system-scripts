#!/bin/bash
# script for quickly setting up wifi networks with WPA Supplicant
# currently a work in progress
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

get_networks() {
    iw dev wlp2s0 scan | grep 'SSID' | tr -d ' '
}

echo "${green}Scanning for networks...${reset}"
networks=($(get_networks))
count=0
while [[ $count -lt ${#networks} ]] ; do
    if [[ ${#networks[${count}]} -gt 1 ]] ; then
        echo "${count}: ${networks[${count}]}"
    fi 
    count=`expr $count + 1`
done
echo "${green}Which network would you like to connect to?${reset}"
read network_num
essid=$(echo ${networks[${network_num}]} | grep -o '".*"' | tr -d '"')
echo "${green}Enter the wifi password${reset}"
read password
wpa_passphrase $essid $password | sudo tee -a /etc/wpa_supplicant.conf
sudo systemctl restart wpa_supplicant
