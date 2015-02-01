#!/bin/bash

## dzen stuff
FG='#E8E8E8'
BG='#000000'
FONT="-*-terminus-normal-*-*-*-13-*-*-*-*-*-*-*"

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
            case ${i:0:1} in
            '#')

            esac
            echo -n "^ca()"
        done
        conky_text_only=$(echo -n "$conky "|sed 's.\^[^(]*([^)]*)..g')
        width=$(textwidth "$FONT" "$conky_text_only  ")
      #  echo -n "  ^bg(#2b2b2b) ^bg(#1f1f1f)^fg(#ececec)  $conky  ^bg(#2b2b2b) ^bg(#1f1f1f)"
        echo -n "  ^bg(#000000) ^bg(#000000)^fg(#E8E8E8)  $conky  ^bg(#000000) ^bg(#000000)"
        echo
        read line || break
        cmd=( $line )
   case "$cmd[0]" in
               conky*)
                  conky="${cmd[@]:1}"
                  ;;
               esac
     done
} 2> /dev/null | dzen2 -ta c -y 0 -x 0 -h 25 -w 1920  -fg $FG -bg $BG -fn $FONT -title-name dzentop -e 'button2=;' &
