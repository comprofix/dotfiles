#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run nm-applet
run parcellite
#run picom --config $HOME/.config/picom/picom.conf
