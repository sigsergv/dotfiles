#!/bin/sh
#
# Add to autostart. For KDE, for example, use Autostart configuration widget

# touchpad properties
xinput set-prop 9 'libinput Scrolling Pixel Distance' 25

# disable touchscreen
xunput disable 11
