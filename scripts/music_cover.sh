#!/usr/bin/env bash

art_thumb_cache="$HOME/.config/.cache/music-thumbs"
title_cache="$art_thumb_cache/status"

touch $title_cache

if [[ "$(cat $title_cache)" == "$(playerctl metadata xesam:title)" ]]; then
  echo "$art_thumb_cache/image"
else
  mkdir -p "$art_thumb_cache"
  echo "$(playerctl metadata xesam:title)" >$title_cache

  art_url=$(playerctl metadata mpris:artUrl 2>&1)

  if [[ "$art_url" == https://* ]]; then
    art_name="image"
    art_path="$art_thumb_cache/$art_name"

    # Always download and overwrite
    curl -s -fLo "$art_path" "$art_url"
    echo $art_path
  elif [[ "$art_url" == file://* ]]; then
    /bin/cat $(echo $art_url | sed "s/file:\/\///g") >$art_thumb_cache/image
    echo $art_thumb_cache/image
  fi
fi
