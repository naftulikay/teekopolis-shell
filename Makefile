
all: help

help:
	@echo "Run make install to install all configuration."
	@echo "BE SURE THAT THIS IS WHAT YOU WANT; THIS WILL OVERWRITE YOUR FILES"

install-tmux:
	@echo "installing tmux configuration..."
	@install -m 0600 tmux/tmux.conf ${HOME}/.tmux.conf

install-powerline:
	@echo "installing powerline configuration..."
	@test -d ${HOME}/.config/powerline/themes/tmux || \
		mkdir -p -m 0700 ${HOME}/.config/powerline/themes/tmux
	@install -m 0600 powerline/config.json ${HOME}/.config/powerline/
	@install -m 0600 powerline/themes/tmux/default.json \
		${HOME}/.config/powerline/themes/tmux/

install-ipython:
	@echo "installing ipython configuration..."
	@test -d ${HOME}/.ipython/profile_default || \
		mkdir -p -m 0700 ${HOME}/.ipython/profile_default
	@install -m 0600 ipython/ipython_config.py ${HOME}/.ipython/profile_default

install-git:
	@echo "installing git configuration..."
	@install -m 0600 git/gitconfig ${HOME}/.gitconfig

install-bash:
	@echo "installing bash configuration..."
	@install -m 0700 bash/bashrc ${HOME}/.bashrc
	@install -m 0700 bash/bash_aliases ${HOME}/.bash_aliases
	@install -m 0700 bash/bash_profile ${HOME}/.bash_profile

install: install-powerline install-tmux install-ipython install-git install-bash
