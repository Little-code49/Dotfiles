#!/bin/bash

## Files and cmd
FILE="$HOME/.config/.cache/eww/state"
EWW="$(which eww)"

## Run eww daemon if not running already
if [[ ! $(pidof eww) ]]; then
  ${EWW} daemon
  sleep 1
fi

## Open widgets
run_eww() {
  ${EWW} open-many \
    bg clock pfp user audio_bg audio_art audio_controls audio_progress audio_title audio_artist audio_time stats week weather sys powermenu
}

## Launch or close widgets accordingly
if [[ ! -f "$FILE" ]]; then
  touch "$FILE"
  run_eww
else
  ${EWW} close-all
  rm "$FILE"
fi
