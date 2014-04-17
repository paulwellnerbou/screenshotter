#!/bin/sh

URL=$1
NAME=$2
NOW=$(date +"%m-%d-%y_%H_%M_%S")

if [ ! -d "$NAME" ]; then
  mkdir "$NAME"
fi

cutycapt --url=$1 --out="$2/$NOW.png"
wget --save-headers -O "$2/$NOW.html" $URL
