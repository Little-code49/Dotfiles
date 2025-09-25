#!/bin/bash

# Folder with wallpapers
WALLPAPER_DIR="$HOME/.config/hypr/wallpapers"

# Path to hyprpaper config
CONFIG_FILE="$HOME/.config/hypr/hyprpaper.conf"

# Select wallpaper with rofi
SELECTED=$(ls "$WALLPAPER_DIR" | rofi -dmenu -i -p "Select wallpaper" -theme $HOME/.config/rofi/config.rasi)

# Exit if nothing chosen
[ -z "$SELECTED" ] && exit 1

# Full path
WALLPAPER="$WALLPAPER_DIR/$SELECTED"

# Overwrite config file
swww img --transition-type wipe $WALLPAPER
