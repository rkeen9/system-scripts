#!/bin/bash
name=$(date +"%s")
ffmpeg -f pulse -i bluez_sink.58_B3_FC_D1_41_BA.a2dp_sink.monitor -acodec libmp3lame -ab 320k ~/Audio/$name.mp3
echo "~/Audio/$name" | xclip -selection clipboard
read -n 1 -r -s -p $'Press any key to exit...\n'
