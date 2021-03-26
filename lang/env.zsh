export PATH="${HOME}/.local/bin:${PATH}"

# rust
source "${HOME}/.cargo/env"
export RUST_SRC_PATH="${XDG_DATA_HOME}/rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/library"
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"

# c/cpp
export PATH="/usr/local/opt/llvm/bin:${PATH}"
export LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include $CPPFLAGS"

# haskell
export PATH="${HOME}/.cask/bin:${PATH}"

# ocaml
eval $(opam env)
alias ocaml="rlwrap ocaml"

# jvm family
alias cljs="lumo -r"
# For the system Java wrappers to find this JDK, symlink it with
# sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk/include ${CPPFLAGS}"
export GRADLE_USER_HOME="${XDG_DATA_HOME}/gradle"
export LEIN_HOME="{$XDG_DATA_HOME}/lein"

# dotnet
export PATH="/usr/local/share/dotnet:${PATH}"
export PATH="${HOME}/.dotnet/tools:${PATH}"
export NUGET_PACKAGES="${XDG_CACHE_HOME}/NuGetPackages"

# go
export GO111MODULE=on
export GOPATH="${HOME}"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:${PATH}"

# node
export PATH="$(yarn global dir)/node_modules/.bin:${PATH}"
mkdir -p "${XDG_CACHE_HOME}/node"
export NODE_REPL_HISTORY="${XDG_CACHE_HOME}/node/.node_repl_history"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"

# elm
export ELM_HOME="${HOME}/node_modules/elm"

# python
export PYTHONUSERBASE="${HOME}/.local"
alias python=python3
alias pip=pip3
alias ipy=ipython
export IPYTHONDIR="${XDG_CONFIG_HOME}/jupyter"
export JUPYTER_CONFIG_DIR="${XDG_CONFIG_HOME}/jupyter"
export PYLINTHOME="${XDG_CACHE_HOME}/pylint"

# ruby
export GEM_HOME="${HOME}/bin/gem"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include ${CPPFLAGS}"
export CPPFLAGS="-I/usr/local/opt/ruby/include ${CPPFLAGS}"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export LDFLAGS="-L/usr/local/opt/ruby/lib ${LDFLAGS}"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:${HOME}/bin/gem/bin:${PATH}"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
export GEM_HOME="${XDG_DATA_HOME}/gem"
export GEM_SPEC_CACHE="${XDG_CACHE_HOME}/gem"
