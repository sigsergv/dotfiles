# export SHELL=bash

default:
	@echo "Use commands: build clean etc"

clean:
	rm -rf _build

build:
	mkdir _build
	mkdir -p "_build/Library/Keyboard Layouts/Ilya Birman Typography Layout.bundle/Contents/Resources"
	cp -r src/* _build
	find _build -name '*.xcf' -delete
	cd _build; for x in *.iconset; do F=$$(basename -s .iconset "$${x}"); iconutil --convert icns "$${x}" --output "$${F}.icns"; done
	cd _build; cp *.icns "Library/Keyboard Layouts/Ilya Birman Typography Layout.bundle/Contents/Resources"
	cd _build; zip -r birman-layout-alt-flags.zip Library
	# cd _build; for x in *.iconset; do F=$$(basename -s .iconset "$${x}"); echo "$${F}"; done

.PHONY: clean build
