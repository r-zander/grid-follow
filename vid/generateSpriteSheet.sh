#!/usr/bin/env bash

ffmpeg -i "example.mp4" -f image2 -vf fps=fps=10 img%03d.jpg
files=$(ls img*.jpg | sort -t '-' -n -k 2 | tr '\n' ' ')
convert $files -append output.jpg