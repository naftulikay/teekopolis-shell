
all: help

help:
	@echo "Run make install to install all configuration."
	@echo "BE SURE THAT THIS IS WHAT YOU WANT; THIS WILL OVERWRITE YOUR FILES"

install-tmux:
	@echo "installing tmux configuration..."
	@install tmux/tmux.conf ${HOME}/.tmux.conf

install-powerline:
	@echo "installing powerline configuration..."
	@test -d ${HOME}/.config/powerline/themes/tmux || \
		mkdir -p ${HOME}/.config/powerline/themes/tmux
	@install powerline/config.json ${HOME}/.config/powerline/
	@install powerline/themes/tmux/default.json \
		${HOME}/.config/powerline/themes/tmux/

install-ipython:
	@echo "installing ipython configuration..."
	@test -d ${HOME}/.ipython/profile_default || \
		mkdir -p ${HOME}/.ipython/profile_default
	@install ipython/ipython_config.py ${HOME}/.ipython/profile_default

install-bash:
	@echo "installing bash configuration..."
	@install bash/bashrc ${HOME}/.bashrc
	@install bash/bash_profile ${HOME}/.bash_profile

install: install-powerline install-tmux install-ipython install-bash
