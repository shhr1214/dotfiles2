all:

setup:
	./setup.sh
	cd shell  && make setup
	cd editor && make setup
	cd tmux   $$ make setup
	cd lang   $$ make setup
