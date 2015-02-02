Ox HaK ArchLinux Desktop Config Files
=================

![Screenshot](https://raw.githubusercontent.com/oxhak/archlinux-desktop-config-files/master/screenshot.png "Screenshot")

WM is Herbsluftwm
https://wiki.archlinux.org/index.php/Herbstluftwm

More commands informations
http://herbstluftwm.org/herbstluftwm.html

For the video at top right, vlc need to have no incrusted video to interface parameter, and be run with "vlcmini" command.

Look at the .bashrc file for custom commands and learn more how to.

archlinux dependency's
=================
herbstluftwm dzen2-git lm_sensors rxvt-unicode compton-git git transset-df monaco-powerline-font-git mplayer scrot conky feh ttytter perl-term-readline-ttytter xorg-fonts-type1 ttf-dejavu artwiz-fonts font-bh-ttf font-bitstream-speedo gsfonts sdl_ttf ttf-bitstream-vera ttf-cheapskate ttf-liberation

resolution
=================
1920x1080<br>
resolution can be changed in *autostart*, *panel.sh*, *panel2.sh* and virtual monitors padding need some adjustements in *autostart*

tags
=================
hcadd *name* (for adding empty tag)<br>
add *nameapp* (for adding tag with app)<br>
hcrm *name tag* (for removing existing tag)<br>

 keys
=================
reload Herbstluftwm *SUPER + SHIFT + R*<br>
open terminal (urxvt) *SUPER + T*<br>
close app *SUPER + SHIFT + C*<br>
create layout *SUPER + O or U*<br>
focus to next layout *SUPER + TAB*<br>
resize layout height *SUPER + CTRL + L or H*<br>
resize layout width *SUPER + CTRL + J or K*<br>
move app to layout width *SUPER + SHIFT + L or H*<br>
move app to layout height *SUPER + SHIFT + J or K*<br>
float mode *SUPER + S*<br>
move layout with mouse in float mode *SUPER + LEFT CLICK + MOVE*<br>
resize layout with mouse in float mode *SUPER + RIGHT CLICK + MOVE*<br>
switch to next right tag *SUPER + RIGHT ARROW*<br>
switch to next left tag *SUPER + LEFT ARROW*<br>
full screen *SUPER + F*<br>
remove layout *SUPER + R*<br>
