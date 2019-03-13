Andorid navbar modifications.

1. Dowbnoad icons: c-left.png, c-right.png
2. Connect phone with USB cable and adb
3. Execute shell

```
adb shell mkdir /storage/emulated/0/NavIcons/
adb push c-right.png /storage/emulated/0/NavIcons/
adb push c-left.png /storage/emulated/0/NavIcons/
adb shell
ASUS_X00T_6:/ $ settings put secure sysui_nav_bar "key(21:file:///storage/emulated/0/NavIcons/c-left.png)[0.85],space[0.3],back,space;home;recent,space[0.3],key(22:file:///storage/emulated/0/NavIcons/c-right.png)"
```


Links:

* <https://4pda.ru/forum/index.php?showtopic=898479&st=680#entry77485938>
* <http://drippler.com/drip/how-change-your-nav-bar-icons-or-re-arrange-buttons-without-root>
