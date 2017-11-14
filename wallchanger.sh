#!/bin/sh

# Créditos originais https://wiki.archlinux.org/index.php/feh

WALLPAPER_FOLDER=$1
SLEEP_TIME=$2


while true; do

    wall=$(find $WALLPAPER_FOLDER -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |
    shuf -n1 -z )
   
    feh --bg-fill $wall 2>&1 /dev/null

   
    echo $wall > /tmp/wallpaper

    sleep $SLEEP_TIME
done
