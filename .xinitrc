#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi 

xset m default &
xset -dpms &
xset s noblank &
xset s 0 0 &
xset s noexpose & 
exec herbstluftwm
