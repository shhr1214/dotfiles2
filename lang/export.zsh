# rust
source $HOME/.cargo/env
export RUST_SRC_PATH="$HOME/.rustup/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src"
export RUST_BACKTRACE=1
fpath+=${HOME}/.zfunc

# elm
export ELM_HOME=$HOME/node_modules/elm

# haskell
export PATH="$HOME/.local/bin:$PATH"

# go
export GOPATH="$HOME"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# ruby
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"

# node
export PATH=$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH

# jvm family
source ${HOME}/.sdkman/bin/sdkman-init.sh
export PATH="$HOME/.cask/bin:$PATH"
