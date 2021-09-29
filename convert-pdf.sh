#!/bin/bash

# Script to convert PDF file to JPG images
#
# Dependencies:
# * pdftk
# * imagemagick

PDF=$1

echo "Processing $PDF"
DIR=`basename "$1" .pdf`

mkdir "$DIR"

echo '  Splitting PDF file to pages...'
pdftoppm "$PDF" "$DIR/$PDF" -png
convert "$DIR"/*.png -auto-orient converted.pdf
rm -r $DIR
echo 'All done'
