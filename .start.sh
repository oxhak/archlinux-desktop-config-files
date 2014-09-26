#!/bin/sh
#use: check .bashrc file
(herbstclient add $1 && herbstclient use $1 && $1 >/dev/null 2>&1 && herbstclient use term && herbstclient merge_tag $1 &)
