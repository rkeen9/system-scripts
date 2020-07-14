#!/bin/sh
# Script for rotating pdf files
mv $1 old-$1
pdftk old-$1 cat 1-endeast output $1
rm old-$1
