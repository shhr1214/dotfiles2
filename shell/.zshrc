umask 022
limit coredumpsize 0
bindkey -d
bindkey -e

source ${DOTFILES}/editor/export.zsh
source ${DOTFILES}/lang/export.zsh

alias ls=exa
alias ll="exa -l"

source ~/.zplug/init.zsh
zplug "sorin-ionescu/prezto"
zplug load --verbose
