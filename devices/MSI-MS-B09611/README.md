MSI Cubi
=========

Model: MS-B09611

Attached Soundblaster SB1095 with lirc

Local network music center with Google Music Desktop Player installed

Pulseaudio disabled.

To enable shutdown from XRDP session copy file `enable-shutdown.pkla` to `/var/lib/polkit-1/localauthority/50-local.d/` and execute `systemctl restart polkit`. And also create file `/etc/sudoers.d/muz` with the following line `muz ALL=NOPASSWD: /usr/sbin/poweroff, /usr/sbin/shutdown`
