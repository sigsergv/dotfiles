Put this line to file `/etc/xrdp/reconnectwm.sh` to restore keyboard layouts on reconnect:

~~~
sleep 2; setxkbmap -layout us,ru -variant ',winkeys' -option 'grp:ctrl_shift_toggle,grp_led:scroll,apple:badmap'
~~~
