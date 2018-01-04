# zmodload zsh/zprof && zprof

autoload -Uz run-help
autoload -Uz add-zsh-hook
autoload -Uz colors && colors
# autoload -Uz compinit && compinit -u
autoload -Uz is-at-least

export LANGUAGE="en_US.UTF-8"
export LANG="${LANGUAGE}"
export LC_ALL="${LANGUAGE}"
export LC_CTYPE="${LANGUAGE}"

export EDITOR=vi
export CVSEDITOR="${EDITOR}"
export GIT_EDITOR="${EDITOR}"

export PAGER=less
export LESSCHARSET='utf-8'

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=10000
export SAVEHIST=1000000
export LISTMAX=50

export DOTFILES=${HOME}/.dotfiles
export PATH=${HOME}/bin:$PATH
