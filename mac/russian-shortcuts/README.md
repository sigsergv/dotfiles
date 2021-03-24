Что это
=======

Этот файл (DefaultKeyBinding.dict.json) позволяет использовать стандартные макосные клавиатурные сочетания
клавиш на русской раскладке. По умолчанию они там не работают совсем. Кроме того, он добавляет несколько
стандартных сочетаний, которые по непонятным причинам не включены, хотя и реализованы в системе:

* ^u - убирает текст до начала строки
* ^k - убирает текст до конца строки

«Убранный» текст на самом деле записывает в специальный отдельный буфер, из которого его можно вставить
сочетанием ^y.


Как установить
==============

Склонируйте этот репозиторий, зайдите в этот каталог и запустите команду:

    make install

Но можно и без клонирования обойтись одной командой в терминале:

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

