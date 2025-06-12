#!/bin/bash

# Filename: ~/github/dotfiles-latest/sketchybar/felixkratz/plugins/front_app.sh

# to show default app logo
# if [ "$SENDER" = "front_app_switched" ]; then
# 	sketchybar --set $NAME label="$INFO" icon.background.image="app.$INFO"
# fi

if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --set $NAME label="$INFO" icon="$($CONFIG_DIR/plugins/icon_map_fn.sh "$INFO")"
fi

