umask 022
limit coredumpsize 0
bindkey -d
bindkey -e

source ${DOTFILES}/editor/export.zsh
source ${DOTFILES}/lang/export.zsh

alias ls=exa
alias ll="exa -l"

alias emacs="emacs -nw"
alias vi=nvim
