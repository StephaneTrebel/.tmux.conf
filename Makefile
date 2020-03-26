# Target directory to install all the configuration to.
TARGET ?= ${HOME}

.DEFAULT: help

.PHONY: help
## Show help
help:
	@grep -B1 -E "^[a-zA-Z0-9_-]+\:" Makefile \
     | grep -v -- -- \
     | sed 'N;s/\n/###/' \
     | sed -n 's/^#: \(.*\)###\(.*\):.*/\2###\1/p' \
     | column -t  -s '###'

.PHONY: install-dependencies
#: Install needed dependencies for some actions
install-dependencies:
	@echo Making $@…
	sudo apt update
	sudo apt upgrade
	sudo apt install xclip

.PHONY: add-tmux-conf
#: Add tmux configuration as a symlink
add-tmux-conf: install-dependencies
	@echo Making $@…
	ln -s $$(pwd)/.tmux.conf $(TARGET)

.PHONY: install
#: Install everything
install: add-tmux-conf
	@echo Making $@…
