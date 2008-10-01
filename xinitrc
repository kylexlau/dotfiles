#!/bin/bash

# variables
defaultwm=sawfish  # Default manager
windowmgr=${1:-$defaultwm}

# choose a window manager
case ${windowmgr} in
    gnome|g)
	WINDOWMANAGER=gnome-session
	;;
    kde|kwm|kdestart)
	WINDOWMANAGER=startkde
	;;
    flux|fluxbox)
	WINDOWMANAGER=fluxbox
	exec spaceclock &  # start with flubox
	exec xidesk &
	;;
    xfce4|xfce)
	WINDOWMANAGER=startxfce4
	;;
    sawfish|s)
	WINDOWMANAGER=sawfish
	;;
    *)
	WINDOWMANAGER=windowmgr
esac

xrdb ~/.Xresources
xmodmap ~/.Xmodmap
fcitx &
exec sawfish

#fetchmail &
#scim &
display -window root ~/.mac/apple.jpg
#exec gnome-session
# exec emerald --replace
#exec $WINDOWMANAGER
#rox -p Default &
#fbpanel &
#xcompmgr &
