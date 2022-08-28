#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
killall -q polybar
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar dp 2>&1 | tee -a /tmp/polybar1.log & disown
polybar hdmi 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."
