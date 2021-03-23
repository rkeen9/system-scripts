#!/bin/sh
filename=$(date +"%s")
scrot -s /home/robert/images/ocr/$filename.png
tesseract -l eng /home/robert/images/ocr/$filename.png - | xclip -selection clipboard
rm /home/robert/images/ocr/$filename.png
