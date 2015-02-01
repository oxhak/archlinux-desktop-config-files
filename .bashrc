#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\u\w: '

#///////////UPDATE SYSTEM
alias update='yaourt -Syu --aur --noconfirm'

#///////////POWER OFF
alias veille='sudo pm-suspend'
alias reboot='sudo shutdown -r now'
alias turnoff='sudo shutdown -h now'

#///////////KILL XORG
alias killx='sudo pkill X'

#///////////HERBSTLUFTWM
#use: hcadd *name* (for adding empty tag)
#use: add *nameapp* (for adding tag with app)
#use: hcrm *name tag* (for removing existing tag)
alias hc='herbstclient'
alias hcadd='herbstclient add'
alias hcrm='herbstclient merge_tag'
alias add='$HOME/.start.sh'

#////// Open VLC at the top right layout (vlc need config with external video window)
alias vlcmini='(herbstclient add vlc && herbstclient move_monitor maintwitter 352x830+1568+225 && herbstclient add video && herbstclient add_monitor 1920x1080+0+0 video mainvideo && herbstclient pad mainvideo 25 0 846 1568 && herbstclient lock_tag mainvideo && herbstclient use vlc && vlc --video-title=vlc-video-float >/dev/null 2>&1 && herbstclient use term && herbstclient remove_monitor mainvideo && herbstclient move_monitor maintwitter 352x1030+1568+25 && herbstclient merge_tag vlc && herbstclient merge_tag video &)'

#///////////APPLICATIONS
#this is an example how to run app
alias steam='(herbstclient add steam && herbstclient use steam && steam >/dev/null 2>&1 && herbstclient use term && herbstclient merge_tag steam &)'
alias music='(herbstclient add music && herbstclient use music && urxvt -e cmus >/dev/null 2>&1 && herbstclient use term && herbstclient merge_tag music &)'
alias twitter='(urxvt -title twitter-float -e ttytter -ssl -dostream -readline -ansi -newline -exts=$HOME/.ttytter/oxhak_ttytter_output.pl >/dev/null 2>&1 &)'
alias mail='(herbstclient add mail && herbstclient use mail && thunderbird >/dev/null 2>&1 && herbstclient use term && herbstclient merge_tag mail &)'
alias web='(herbstclient add web && herbstclient use web && firefox >/dev/null 2>&1  && herbstclient use term && herbstclient merge_tag web &)'
alias irc='(herbstclient add irc && herbstclient use irc && urxvt -e screen irssi >/dev/null 2>&1 && herbstclient use term && herbstclient merge_tag irc &)'
alias files='(herbstclient add files && herbstclient use files && urxvt -e mc >/dev/null 2>&1 && herbstclient use term && herbstclient merge_tag files &)'
alias sound='(herbstclient add sound && herbstclient use sound && pavucontrol >/dev/null 2>&1 && herbstclient use term && herbstclient merge_tag sound &)'
