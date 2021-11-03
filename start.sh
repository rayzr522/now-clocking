#!/bin/bash
#see if you have all necessary rquirements
command -v conky > /dev/null 2>&1 || { echo >&2 "I require conky but it's not installed. Install it. Aborting."; exit 1; }
command -v ffmpeg > /dev/null 2>&1 || { echo >&2 "I require ffmpeg but it's not installed. Install it. Aborting."; exit 1; }
command -v playerctl > /dev/null 2>&1 || { echo >&2 "I require playerctl but it's not installed. Install it. Aborting."; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "I require curl but it's not installed. Install it. Aborting."; exit 1; }

set -ex

cd "$(dirname "$0")"

conky -q -c ./conky/np.lua -d &>/dev/null
conky -q -c ./conky/npart.lua -d &> /dev/null
