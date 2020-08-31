#!/bin/sh
cat ~/scripts/kanji.txt | dmenu | grep -o ':.*' | tr -d ': ' | xclip -selection clipboard
