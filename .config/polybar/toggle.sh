#!/usr/bin/env sh
if pgrep -x polybar > /dev/null; then
  killall -q polybar
else
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar main &
  done
fi
