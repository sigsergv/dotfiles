binary:
	plutil -convert binary1 -o DefaultKeyBinding.dict DefaultKeyBinding.dict.json

install: binary
	cp DefaultKeyBinding.dict $$HOME/Library/KeyBindings/DefaultKeyBinding.dict
	rm -f DefaultKeyBinding.dict
