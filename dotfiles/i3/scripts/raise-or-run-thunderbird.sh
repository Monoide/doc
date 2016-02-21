#!/bin/sh
count=`xwininfo -name Thunderbird | wc -l`
if [ $count -eq 0 ]; then
    i3-msg "exec --no-startup-id thunderbird"
else
    i3-msg "[class=Thunderbird] focus"
fi
