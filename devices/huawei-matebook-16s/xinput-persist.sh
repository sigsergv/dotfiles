#!/bin/bash
#
# Add to autostart. For KDE, for example, use Autostart configuration widget
#
# This script tunes input devices:
#   * disables touchscreen;
#   * set more comfortable scrolling behavior for touchpad

probe_device_ids=$(xinput list | grep GXTP7863:00 | grep -o 'id=[0-9]\+' | grep -o '[0-9]\+')
for d in $probe_device_ids; do
	xinput list-props $d | grep -q Tapping
	if [ $? -eq 0 ]; then
		touchpad_id=$d
		break
	fi
done

# touchpad properties
if [ ! -z $touchpad_id ]; then
	xinput set-prop $touchpad_id 'libinput Scrolling Pixel Distance' 25
fi

# disable touchscreen
touchscreen_id=$(xinput | grep GXTP738X | grep -o 'id=[0-9]\+' | grep -o '[0-9]\+')
xinput disable $touchscreen_id
