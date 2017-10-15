all:

link:
	ln -fs ${DOTFILES}/tmux/.tmux.conf ~/.tmux.conf

unlink:
	rm ~/.tmux.conf

setup: link
	git clone https://github.com/tmux-plugins/tpm ${DOTFILES}/tmux/plugins/tpm
	${DOTFILES}/tmux/plugins/tpm/bin/install_plugins

update-plugins:
	${DOTFILES}/tmux/plugins/tpm/bin/update_plugins all
