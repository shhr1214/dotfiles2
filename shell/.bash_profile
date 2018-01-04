if [ -f ~/.bashrc ]; then
	  source ~/.bashrc
fi

export DOTFILES=$HOME/.dotfiles

export GOPATH="$HOME"
# export GOROOT="$HOME"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

export RBENV_ROOT=$HOME/.rbenv
export PATH=$RBENV_ROOT/bin:$PATH
eval "$(rbenv init -)"
