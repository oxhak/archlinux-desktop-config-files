#!/bin/bash

case $1 in
    down)
        amixer -D pulse set Master 5%- unmute
        ;;
    up)
        amixer -D pulse set Master 5%+ unmute
        ;;
    mute)
        amixer -D pulse set Master toggle
        ;;
esac
