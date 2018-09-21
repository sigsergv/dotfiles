Copy `RM-820.lircd.conf` to `/etc/lirc/lircd.conf.d`

Edit `/etc/lirc/lirc_options.conf` and set:

~~~~~
	driver          = alsa_usb
	device          = hw:Pro
~~~~~

Install required packages:

~~~~~
apt install xautomation
~~~~~
