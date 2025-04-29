#!/bin/sh

# Run this script if your touchpad behaves weird after suspend/resume: double taps,
# not working scroll etc.

sudo rmmod hid_generic
sudo modprobe hid_generic

sudo rmmod hid_multitouch
sudo modprobe hid_multitouch
