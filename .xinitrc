#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources


# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
~/Downloads/Desktop/wallpaper.sh &
tint2 &
nm-applet &
parcellite &
shutter --min_at_startup &
compton &
conky -c ~/.config/.conkyrc2 &
xsettingsd &
udiskie --tray &
conky -c ~/.config/.conkyrc &
exec openbox-session
