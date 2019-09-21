export PATH="$HOME/.local/bin:$PATH"

# rust
source $HOME/.cargo/env
export RUST_SRC_PATH="$HOME/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"

# haskell
export PATH="$HOME/.cask/bin:$PATH"

# ocaml
eval $(opam env)
alias ocaml="rlwrap ocaml"

# go
export GOPATH="$HOME"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"

# ruby
export GEM_HOME="$HOME"/bin/gem
export PATH="$HOME/bin/gem/bin:$PATH"

# jvm family
# export SDKMAN_DIR=${HOME}/.sdkman
# source ${HOME}/.sdkman/bin/sdkman-init.sh

# node
export PATH="$HOME/.yarn/bin:$PATH"

# elm
export ELM_HOME=$HOME/node_modules/elm
