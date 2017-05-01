Device
======

Creative Sound Blaster X-Fi 5.1 Pro

Usage
=====

Run irexec in daemon mode:

   irexec -d

Run irexec in normal mode:

    irexec

Automation
==========

Install xautomation to make `xte` command work in irexec

    apt install xautomation

Monitoring LIRCD events
=======================

Execute 

    irw

It should display events while you press buttons on the remote.

Configure lircd
===============

* hardware.conf is not used anymore!
* Copy `lirc/RM-820.lircd.conf` `to /etc/lirc/lircd.conf.d`.
* Edit `/etc/lirc/lirc_options.conf` and set these parameters:
  ~~~
  driver          = alsa_usb
  device          = hw:Pro
  ~~~
  Where "hw:Pro" is from `cat /proc/asound/cards`:
  ~~~
  # cat /proc/asound/cards
  0 [HDMI           ]: HDA-Intel - HDA Intel HDMI
                       HDA Intel HDMI at 0xf7210000 irq 49
  1 [Pro            ]: USB-Audio - SB X-Fi Surround 5.1 Pro
                       Creative Technology Ltd SB X-Fi Surround 5.1 Pro at usb-0000:00:14.0-3, full sp
  ~~~
* copy `.lircrc` to `~/.lircr`
* create file `/home/muz/.config/autostart/irexec.desktop` with the following contents:
  ~~~
  [Desktop Entry]
  Type=Application
  Exec=/usr/bin/irexec -d
  ~~~


