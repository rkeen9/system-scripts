#!/bin/sh

for x in $(pgrep $1) ; do
    kill $x
done
