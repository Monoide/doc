#!/bin/sh
count=`xwininfo -name chromium | wc -l`
if [ $count -eq 0 ]; then
    i3-msg "exec --no-startup-id chromium"
else
    i3-msg "[class=chromium] focus"
fi
