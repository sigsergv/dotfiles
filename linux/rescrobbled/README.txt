This is a background scrobbler.

copy/symlink config to `~/.config/rescrobbled/config.toml`

install user service:

    cp rescrobbled.service ~/.config/systemd/user/
	systemctl --user enable rescrobbled.service
	systemctl --user start rescrobbled.service
