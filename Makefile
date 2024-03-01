BUILD_DIR = build

default: clox

clean: 
	@ rm -rf $(BUILD_DIR)
	@ rm -rf gen

debug: 
	@ $(MAKE) -f util/c.make NAME=cloxd MODE=debug SOURCE_DIR=src

clox:
	@ $(MAKE) -f util/c.make NAME=clox MODE=release SOURCE_DIR=src
	@ cp build/clox clox
	
.PHONY: clean clox debug default

