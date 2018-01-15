# zmodload zsh/zprof && zprof

autoload -Uz run-help
autoload -Uz add-zsh-hook
autoload -Uz colors && colors
autoload -Uz compinit && compinit
autoload -Uz is-at-least

# 補完の大文字小文字区別
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

typeset -U path PATH

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

# なんかよくわからんけど rbenv こける
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# その他
source ${DOTFILES}/editor/export.zsh
source ${DOTFILES}/lang/export.zsh

# alias
alias ls=exa
alias ll="exa -l"

alias emacs="emacs -nw"
alias emacs-with-window="/usr/local/Cellar/emacs-plus/25.3/bin/emacs"
alias vi="nvim -u NONE --noplugin"
alias vim="nvim"

alias update="~/.dotfiles/script/update"
