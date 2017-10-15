if [ -f ~/.bashrc ]; then
	  source ~/.bashrc
fi

export DOTFILES=$HOME/.dotfiles

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

export RBENV_ROOT=$HOME/.rbenv
export PATH=$RBENV_ROOT/bin:$PATH
eval "$(rbenv init -)"
