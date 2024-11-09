#!/bin/bash

INPUT=$1
OUTPUT=`echo $INPUT | sed 's/\.[^.]*$//'`
EXTRA=$2

echo "ffmpeg -hwaccel auto -i $INPUT -movflags faststart $EXTRA $OUTPUT.mp4"
ffmpeg -hwaccel auto -i "$INPUT" -movflags faststart $EXTRA "$OUTPUT.mp4"
if [ $? -eq 0 ]; then
  ls -lah "$INPUT" "$OUTPUT.mp4"
  rm "$INPUT"
fi
