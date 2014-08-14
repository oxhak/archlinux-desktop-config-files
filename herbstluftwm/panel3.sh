#!/bin/bash

## dzen stuff
FG='#EDEDED'
BG='#111111'
FONT="-*-terminus-normal-*-*-*-14-*-*-*-*-*-*-*"

function uniq_linebuffered() {
   awk '$0 != l { print ; l=$0 ; fflush(); }' "$@"
}

{
   conky -c ~/.conky/statusbar | while read -r; do
      echo -e "conky $REPLY";
      #break
   done > >(uniq_linebuffered) &
   childpid=$!
   herbstclient --idle
   kill $childpid
} | {
   TAGS=( $(herbstclient tag_status $monitor) ) 
      conky=""

      while true; do
         for i in "${TAGS[@]}" ; do
            echo -n "^ca(1,herbstclient use ${i:1})"
            case ${i:0:1} in
            '#')
               echo -n "^bg(#6dc5b6)^fg(#FFFFFF)  ${i:1}  ^bg(#111111)"
               ;;
            ':')
               echo -n "^fg(#FFFFFF)  ${i:1}  "
               ;;
           '!')
               echo -n "^bg(#cd4c4c)^fg(#FFFFFF)  ${i:1}  ^bg(#111111)"
               ;;
            *)
               echo -n "^fg(#666666)  ${i:1}  "
               ;;

            esac
            echo -n "^ca()"
        done
        echo
        read line || break
        cmd=( $line )
   case "$cmd[0]" in
               tag*)
                  TAGS=( $(herbstclient tag_status $monitor) ) 
                  ;;
               esac
     done
} 2> /dev/null | dzen2 -ta c -y 0 -x 1920 -h 30 -w 1920  -fg $FG -bg $BG -fn $FONT -title-name dzenbottom & 
