#!/bin/bash

WALLDIR="/home/jwo/videos"

wallpapers=(
    "$WALLDIR/ahri.mp4"
    "$WALLDIR/azure.mp4"
    "$WALLDIR/hiruki3.mp4"
    "$WALLDIR/hiyuki.mp4"
    "$WALLDIR/hiyuki2.mp4"
    "$WALLDIR/hso.mp4"
    "$WALLDIR/mizuki.mp4"
    "$WALLDIR/irelia.mp4"
    "$WALLDIR/toads.mp4"

)

while true; do
    NUM=$((RANDOM % ${#wallpapers[@]}))

    pkill mpvpaper
    mpvpaper '*' "${wallpapers[$NUM]}" --mpv-options "loop panscan=1.0"

    sleep 15m
done
