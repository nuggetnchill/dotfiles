#!/bin/bash

update() {
  source "$CONFIG_DIR/icons.sh"
  # SSID="$(/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -I | awk -F ' SSID: '  '/ SSID: / {print $2}')"
  IP="$(ipconfig getifaddr en0)"
  DNS=$(scutil --dns | awk '/nameserver\[[0-9]+\]/ {print $3}' | head -n1)


  ICON="$([ -n "$IP" ] && echo "$WIFI_CONNECTED" || echo "$WIFI_DISCONNECTED")"
  LABEL="$([ -n "$IP" ] && echo "DNS:$DNS" || echo "Disconnected")"

  sketchybar --set $NAME icon="$ICON" label="$LABEL"\
            label.padding_left=5
}

click() {
  CURRENT_WIDTH="$(sketchybar --query $NAME | jq -r .label.width)"

  WIDTH=0
  if [ "$CURRENT_WIDTH" -eq "0" ]; then
    WIDTH=dynamic
  fi

  sketchybar --animate sin 20 --set $NAME label.width="$WIDTH"
}

case "$SENDER" in
  "wifi_change") update
  ;;
  "mouse.clicked") click
  ;;
esac
