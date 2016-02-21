#!/bin/sh
count=`xwininfo -name Firefox | wc -l`
if [ $count -eq 0 ]; then
    i3-msg "exec --no-startup-id firefox"
else
    i3-msg "[class=Firefox] focus"
fi
