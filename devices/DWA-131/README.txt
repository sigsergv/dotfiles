Install dkms
============

~~~~~
git clone https://github.com/Mange/rtl8192eu-linux-driver.git
car README.md
~~~~~

~~~~~
echo "options 8192eu rtw_power_mgnt=0 rtw_enusbss=0" > /etc/modprobe.d/8192eu.conf
echo 'SUBSYSTEM=="net", DRIVERS=="?*", ATTR{address}=="aa:aa:aa:aa:aa:aa", NAME="wlan1"' >> /etc/udev/rules.d/010_netinterfaces.rules
~~~~~



