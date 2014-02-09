binary:
	plutil -convert binary1 -o DefaultKeyBinding.dict DefaultKeyBinding.dict.json

install: binary
	mkdir -p $$HOME/Library/KeyBindings/
	cp DefaultKeyBinding.dict $$HOME/Library/KeyBindings/DefaultKeyBinding.dict
	rm -f DefaultKeyBinding.dict
