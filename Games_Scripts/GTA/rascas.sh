#!/bin/bash

times=199
while [ $times -gt 0 ];
do
        date
        times=$(($times-1))

xdotool mousemove 847 548
xdotool click 1
xdotool mousemove 954 554
xdotool click 1
xdotool mousemove 1092 542
xdotool click 1
xdotool mousemove 830 669
xdotool click 1
xdotool mousemove 960 666
xdotool click 1
xdotool mousemove 1093 669
xdotool click 1
xdotool mousemove 841 779
xdotool click 1
xdotool mousemove 959 783
xdotool click 1
xdotool mousemove 1090 785
xdotool click 1
sleep 5s
xdotool key "Return"

done

