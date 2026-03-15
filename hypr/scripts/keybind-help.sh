#!/bin/bash

KEYBINDINGS="$HOME/.config/hypr/conf/keybindings.conf"

# Parse bind lines into readable format
bindings=$(grep -E '^\s*bind[a-z]* =' "$KEYBINDINGS" | \
  sed 's/^\s*//;s/#.*//' | \
  awk -F'=' '{print $2}' | \
  awk -F',' '{
    mod  = $1; key = $2; action = $3; args = $4
    gsub(/^ +| +$/, "", mod)
    gsub(/^ +| +$/, "", key)
    gsub(/^ +| +$/, "", action)
    gsub(/^ +| +$/, "", args)

    # Normalize modifiers
    gsub(/\$mainMod/, "Super", mod)
    gsub(/CTRL/, "Ctrl", mod)
    gsub(/ALT/, "Alt", mod)
    gsub(/SHIFT/, "Shift", mod)
    gsub(/ +/, "+", mod)

    combo = mod "+" key

    label = action
    if (args != "") label = action " → " args

    printf "%-30s %s\n", combo, label
  }')

echo "$bindings" | rofi -dmenu -i \
  -p "󰌌 Keybindings" \
  -lines 20 \
  -width 60 \
  -no-fixed-num-lines \
  -no-custom \
  -mesg "Press Esc to close"
