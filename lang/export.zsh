# rust
source $HOME/.cargo/env
export RUST_SRC_PATH="$HOME/.multirust/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src"

# go
export GOPATH="$HOME"
export GOROOT="$HOME"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
