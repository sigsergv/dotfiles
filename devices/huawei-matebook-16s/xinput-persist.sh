#!/bin/sh
#
# Add to autostart. For KDE, for example, use Autostart configuration widget

# touchpad properties
touchpad_id=$(xinput list | grep Touchpad | grep -o 'id=[0-9]\+' | grep -o '[0-9]\+')
xinput set-prop $touchpad_id 'libinput Scrolling Pixel Distance' 25

# disable touchscreen
touchscreen_id=$(xinput | grep GXTP738X | grep -o 'id=[0-9]\+' | grep -o '[0-9]\+')
xinput disable $touchscreen_id
