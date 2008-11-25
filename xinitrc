#!/bin/sh
xrdb ~/.Xresources
xmodmap ~/.Xmodmap
fcitx &
thunar --daemon &
emacs --daemon
/opt/google/desktop/bin/gdlinux start
#nm-applet --sm-disable
clipboard-daemon 
exec gnome-session
exec emerald --replace
