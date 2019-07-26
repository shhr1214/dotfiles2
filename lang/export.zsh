# rust
source $HOME/.cargo/env
export RUST_SRC_PATH="$HOME/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"
fpath+=${HOME}/.zfunc

# haskell
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cask/bin:$PATH"

# elm
export ELM_HOME=$HOME/node_modules/elm

# go
export GOPATH="$HOME"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"

# node
export PATH=$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH

# jvm family
# export SDKMAN_DIR=${HOME}/.sdkman
# source ${HOME}/.sdkman/bin/sdkman-init.sh
