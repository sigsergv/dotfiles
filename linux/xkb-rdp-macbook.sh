#!/bin/bash

#setxkbmap -layout 'us,ru' -variant ',winkeys' -option 'grp:alt_shift_toggle,grp_led:scroll,apple:badmap'
xmodmap -e 'keycode 94 = grave asciitilde Cyrillic_io Cyrillic_IO'
