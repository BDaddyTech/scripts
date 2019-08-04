#!/bin/sh
intern="eDP-1"
extern="HDMI-1"

if xrandr | grep -q "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
    xrandr --output "$extern" --set audio force-dvi --mode 1920x1080
    xrandr --output "$intern" --auto --output "$extern" --right-of "$intern"
fi