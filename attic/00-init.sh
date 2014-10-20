#!/bin/sh

## KDE initialization file, copy to ~/.kde/env and make it executable

/usr/bin/xhost +gate
/usr/bin/setxkbmap -option lv3:ralt_switch -option grp:caps_toggle -option compose:menu -option grp_led:caps -layout us+typo,ru:2+typo
/usr/bin/xrdb merge /home/cancel/.Xresources
/home/cancel/bin/set_mixer
