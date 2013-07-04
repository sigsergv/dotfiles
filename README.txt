00-init.sh
==========
KDE initialization file, copy to ~/.kde/env and make it executable

11-x11-synaptics.fdi
====================
HAL policy file for touchpad, copy to /etc/hal/fdi/policy/ and restart hal

z60_udev_my_flash_drives.rules
==============================
udev rules file for my usb devices, requires pmount
How to install:
# cp z60_udev_my_flash_drives.rules /etc/udev/
# ln -s ../z60_udev_my_flash_drives.rules /etc/udev/rules.d/ 

.Xresources
===========
X Resources initialization file, contains some important setting for XTerm
