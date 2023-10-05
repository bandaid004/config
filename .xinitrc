#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
picom -b &
batsignal -b -c 10 -d 5 -f 90 &
feh --bg-scale ~/Images/Wallpapers/space.jpg &
exec i3
