#!/bin/bash

# List all installed packages with version
chosen=$(pacman -Q | rofi -dmenu -i \
  -p "󰏓 Packages" \
  -lines 20 \
  -width 50 \
  -no-fixed-num-lines \
  -format s)

# Exit if nothing selected
[ -z "$chosen" ] && exit 0

# Extract just the package name (drop version)
pkg=$(echo "$chosen" | awk '{print $1}')

# Show package details in a second rofi popup
info=$(pacman -Qi "$pkg" 2>/dev/null | grep -E "^(Name|Version|Description|Install Size|Install Date|Groups|Depends On)" | sed 's/  */ /g')

echo "$info" | rofi -dmenu -i \
  -p " $pkg" \
  -lines 10 \
  -no-fixed-num-lines \
  -width 55 \
  -mesg "Press Esc to close"
