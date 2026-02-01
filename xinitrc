#!/bin/sh

[ -f "$HOME/.xprofile" ] && . "$HOME/.xprofile"

if command -v gnome-keyring-daemon >/dev/null 2>&1; then
    eval "$(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)"
    export SSH_AUTH_SOCK
    export GPG_AGENT_INFO
    export GNOME_KEYRING_CONTROL
    export GNOME_KEYRING_PID
fi

# Fix Screen locations
xrandr \
  --output DP-0  --mode 1920x1080 --primary --pos 1920x0 \
  --output DP-2  --mode 1920x1080 --pos 3840x0 \
  --output HDMI-0 --mode 1920x1080 --pos 0x0 

# Start D-Bus session
eval $(dbus-launch --sh-syntax --exit-with-session)

# Statup Apps

exec gnome-keyring-daemon --start --components=pkcs11 &
exec feh --bg-center ~/OneDrive_mmckinnon@comprofix.com/Pictures/Wallpapers/Dilbert\ Background.jpg &
exec dunst &
exec parcellite &
exec OneDriveGui &
exec nm-applet &
exec dwmblocks &
exec dwm





