#!/bin/sh

if [ -z "$1" ]; then {
    echo ".gif file is unset";
    echo "usage: ./gif2mp4.sh <input.gif> <output.mp4>"
    exit 1;
}
fi;
if [ -z "$2" ]; then {
    echo ".mp4 file is unset";
    echo "usage: ./gif2mp4.sh <input.gif> <output.mp4>"
    exit 1;
}
fi;

# can change effects and whatnot to save storage space
# ffmpeg -i $1 -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" $2
ffmpeg -y -i $1 -movflags faststart -pix_fmt yuv420p $2 > /dev/null 2>&1