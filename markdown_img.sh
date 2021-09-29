#!/bin/sh
path="/home/robert/images/markdown/$(date +'%s').png"
scrot -s $path 
echo "![Alt text]($path)" | xclip -selection clipboard
