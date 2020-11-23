#!/bin/sh
for id in $(pgrep teams); do 
    kill -9 "$id" 
done
