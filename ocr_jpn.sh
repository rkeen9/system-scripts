#!/bin/sh
filename=$(date +"%s")
scrot -s /home/robert/images/ocr/$filename.png
tesseract -l jpn /home/robert/images/ocr/$filename.png - | tr -d ' ' | xclip -selection clipboard
rm /home/robert/images/ocr/$filename.png
