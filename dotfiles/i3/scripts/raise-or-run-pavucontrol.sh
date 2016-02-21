#!/bin/sh
count=`xwininfo -name pavucontrol | wc -l`
if [ $count -eq 0 ]; then
    i3-msg "exec --no-startup-id pavucontrol"
else
    i3-msg "[class=Control] focus"
fi
