#!/usr/bin/env bash

# Terminate already running bar instances.
pgrep polybar | xargs kill -15
# If all your bars have ipc enabled you can also use
# polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar.log

for m in $(polybar --list-monitors | cut -d":" -f1); do
		MONITOR=$m polybar --reload AlexsCoolBarXD >>/tmp/polybar.log 2>&1 &
done

echo "Bars launched..."
