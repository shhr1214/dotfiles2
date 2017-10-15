all:

setup:
	ln -fs ${DOTFILES}/tmux/.tmux.conf ~/.tmux.conf
	git clone https://github.com/tmux-plugins/tpm ${DOTFILES}/tmux/plugins/tpm
	${DOTFILES}/tmux/plugins/tpm/bin/install_plugins

remove:
	rm ~/.tmux.conf

update-plugins:
	${DOTFILES}/tmux/plugins/tpm/bin/update_plugins all
