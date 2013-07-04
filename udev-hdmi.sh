#!/bin/sh

# this script clones LVDS1 display to HDMI1

export DISPLAY=:0
XUSER=elena
LOG="logger -t HDMI-UDEV"
#LOG=true

HDMI_STATUS="$(cat /sys/class/drm/card0-HDMI-A-1/status)"

if [ "${HDMI_STATUS}" = connected ]; then
        $LOG "connected"
        sudo -u $XUSER DISPLAY=$DISPLAY xrandr --output HDMI1 --auto --same-as LVDS1
fi
