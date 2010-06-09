# -------------------------------------------------
# file:     ~/.xinitrc
# -------------------------------------------------

#!/bin/sh

# enable restart X
setxkbmap -option terminate:ctrl_alt_bksp &
# disable CapsLock & map to Escape (could be useful someday)
#setxkbmap -option caps:escape &

# set wallpaper
sh ~/.fehbg &

# start the screensaver
#xscreensaver -no-splash &

# start terminal emulation daemon
/usr/bin/urxvtd -q -o -f &

# Dropbox
#(sleep 60s && ~/.dropbox-dist/dropboxd) &

# Conky
conky | while read -r; do xsetroot -name "$REPLY"; done &

# Start dwm
exec ck-launch-session ~/Scripts/dwm-start
