DEFAULT_BINDINGS_FILE = /System/Library/Frameworks/AppKit.framework/Resources/StandardKeyBinding.dict

binary:
	plutil -convert binary1 -o DefaultKeyBinding.dict DefaultKeyBinding.dict.json

install: binary
	mkdir -p $$HOME/Library/KeyBindings/
	cp DefaultKeyBinding.dict $$HOME/Library/KeyBindings/DefaultKeyBinding.dict
	rm -f DefaultKeyBinding.dict

extract-system-bindings:
	plutil -convert json -o StandardKeyBinding.json $(DEFAULT_BINDINGS_FILE)
	./extract-system-bindings.py
