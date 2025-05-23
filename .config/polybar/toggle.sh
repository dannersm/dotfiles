#!/usr/bin/env sh
if pgrep -x polybar > /dev/null; then
  killall -q polybar
else
  polybar main &
fi
