#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\u\w: '


#///////////HERBSTLUFTWM
#use: hcadd *name* (for adding empty tag)
#use: add *nameapp* (for adding tag with app)
#use: hcrm *name tag* (for removing existing tag)
alias hc='herbstclient'
alias hcadd='herbstclient add'
alias hcrm='herbstclient merge_tag'
alias add='~/.start.sh'

#///////////APPLICATIONS 
#this is an example how to run app
alias skype='(export PULSE_LATENCY_MSEC=60 && herbstclient add skype && herbstclient use skype && skype >/dev/null 2>&1 && herbstclient use term && herbstclient merge_tag skype &)'
alias steam='(herbstclient add steam && herbstclient use steam && steam >/dev/null 2>&1 && herbstclient use term && herbstclient merge_tag steam &)'
alias music='(herbstclient add music && herbstclient use music && urxvt -e cmus >/dev/null 2>&1 && herbstclient use term && herbstclient merge_tag music &)'
alias twitter='(urxvt -title twitter-float -e ttytter -ssl -dostream -readline -ansi -newline -exts=/home/oxhak/.ttytter/oxhak_ttytter_output.pl >/dev/null 2>&1 &)'
alias mail='(herbstclient add mail && herbstclient use mail && thunderbird >/dev/null 2>&1 && herbstclient use term && herbstclient merge_tag mail &)'
alias web='(herbstclient add web && herbstclient use web && firefox >/dev/null 2>&1  && herbstclient use term && herbstclient merge_tag web &)'
alias irc='(herbstclient add irc && herbstclient use irc && urxvt -e screen irssi >/dev/null 2>&1 && herbstclient use term && herbstclient merge_tag irc &)'
alias files='(herbstclient add files && herbstclient use files && urxvt -e mc >/dev/null 2>&1 && herbstclient use term && herbstclient merge_tag files &)'
alias sound='(herbstclient add sound && herbstclient use sound && pavucontrol >/dev/null 2>&1 && herbstclient use term && herbstclient merge_tag sound &)'