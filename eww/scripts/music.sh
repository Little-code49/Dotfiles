#!/bin/bash

playerctl position >/dev/null 2>&1
err=$?
if [[ $1 == "time" ]]; then
  if [[ $err == 1 ]]; then
    echo "xx:xx/xx:xx"
  else
    echo "$(playerctl position | awk '{printf "%d:%02d", int($1/60), int($1%60)}')/$(playerctl metadata mpris:length | awk '{sec=int($1/1000000); printf "%d:%02d", sec/60, sec%60}')"
  fi
elif [[ $1 == "title" ]]; then
  if [[ $err == 1 ]]; then
    echo "Not Playing"
  else
    playerctl metadata title
  fi
elif [[ $1 == "image" ]]; then
  if [[ $err == 1 ]]; then
    echo "$HOME/.config/eww/default_album_cover.jpg"
  else
    if [[ $(playerctl metadata xesam:album) =~ [^[:space:]] ]]; then
      bash "$HOME/.config/scripts/music_cover.sh"
    else
      echo "$HOME/.config/eww/default_album_cover.jpg"
    fi
  fi
fi
