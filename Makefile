all:

setup:
	cd shell  && make setup
	cd editor && make setup
	cd tmux   $$ make setup
