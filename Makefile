all:

init:
	cd shell && make link
	cd editor && make link
	cd tmux $$ make link
