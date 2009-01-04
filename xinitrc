#!/bin/sh
xrdb ~/.Xresources
xmodmap ~/.Xmodmap
fcitx &
clipboard-daemon  &
#emacs --daemon
#exec /usr/local/bin/stumpwm

#thunar --daemon &
#/opt/google/desktop/bin/gdlinux start
#nm-applet --sm-disable
exec gnome-session
#exec xfce4-session
#exec emerald --replace
