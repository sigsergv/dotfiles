Edit file `/Applications/GIMP-2.10.app/Contents/Resources/etc/fonts/fonts.conf`:

~~~~~
	<dir>/usr/share/fonts</dir>
	<dir>/System/Library/Fonts</dir> <dir>/Library/Fonts</dir> <dir>~/Library/Fonts</dir>
	<dir prefix="xdg">fonts</dir>
	<!-- the following element will be removed in the future -->
	<dir>~/.fonts</dir>
~~~~~

and leave this one:


~~~~~
	<dir>~/Library/Fonts</dir>
~~~~~

