#!/bin/sh
herbstclient use 1 | firefox &
sleep 30 
thunderbird &
steam &
herbstclient use 3 | urxvt -e irssi &
sleep 5 
herbstclient use 4 | urxvt -e finch &
sleep 3 
herbstclient use 5 | urxvt -e cmus &
sleep 3 
herbstclient use 6 | urxvt -e mc &
sleep 3 
herbstclient use 20 &
sleep 1 
lol='split';
herbstclient $lol horizontal 0.8 &
sleep 1
herbstclient focus right &
sleep 2 
skype &
sleep 35
herbstclient use 1 &
