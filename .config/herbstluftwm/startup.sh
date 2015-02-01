sleep 4 &&
exec `(urxvt >/dev/null 2>&1 &)` &&
sleep 2 &&
exec `(urxvt -title twitter-float -e ttytter -ssl -dostream -readline -ansi -newline -exts=$HOME/.ttytter/oxhak_ttytter_output.pl >/dev/null 2>&1 &)` &&
exit
