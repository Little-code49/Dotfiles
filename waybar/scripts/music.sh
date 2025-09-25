#!/bin/bash

if [[ $1 == "--title" ]]; then
  playerctl status >/dev/null 2>&1
  val=$?
  if [[ $val == 1 ]]; then
    echo "{\"text\": \"Not Playing\"}"
  elif [[ $val == 0 ]]; then
    echo "{\"text\": \"$(playerctl metadata title)\"}"
  fi
elif [[ $1 == "--status" ]]; then
  playerctl status >/dev/null 2>&1
  val=$?
  if [[ $val == 0 ]]; then
    echo "{\"alt\": \"$(playerctl status)\"}"
  elif [[ $val == 1 ]]; then
    echo "{\"alt\": \"Paused\"}"
  fi
fi
