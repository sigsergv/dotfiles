Overview
========

This bindings file adds a few text manipulation hotkeys that are not available by default (they have been
added a few years ago actually):

* ^u - kills text to the beginning of paragraph
* ^k - kills text to the end of paragraph

"Killed" text can be "pasted" (yanked) in this field using ^y

Also it makes text manipulation hotkeys functional while using russian input source, so
you can use hotkeys like ^d, ^e, ^a both in english and russian input sources.

This binding is supposed to work only on PC keyboard map!


How to install
==============

Open this directory in terminal and type:

    make install


Or you can copy this line into the terminal and press ENTER:

    curl 'https://raw.githubusercontent.com/sigsergv/dotfiles/master/mac/russian-shortcuts/dist-install.sh'\
		-o /tmp/k-dist-install.sh && bash /tmp/k-dist-install.sh


Some information
================

See file /System/Library/Frameworks/AppKit.framework/Versions/C/Headers/NSEvent.h for
constants that corresponds to keys. For example, 0xF702 (or \uf702 in json notation)
corresponds to NSLeftArrowFunctionKey constant, i.e. Left Arrow key on the keyboard.

See also https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/EventOverview/TextDefaultsBindings/TextDefaultsBindings.html

Some special character meanings:

    $ - SHIFT
    ~ - OPTION
    ^ - Control
    # - numeric keypad
    @ - Cmd

