SHELL = bash

help:
	@echo "Use command 'make install'"

install:
	@echo "Installing telegram"
	mkdir -p $$HOME/.config/telegram-fontconfig/cache
	mkdir -p $$HOME/bin
	rm -rf $$HOME/bin/run-telegram $$HOME/.config/telegram-fontconfig/conf.d
	ln -s $$(readlink -f run-telegram) $$HOME/bin
	cp fontconfig/{fonts.conf,fonts.dtd} $$HOME/.config/telegram-fontconfig
	cp -r fontconfig/conf.d $$HOME/.config/telegram-fontconfig
