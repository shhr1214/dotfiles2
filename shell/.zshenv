# zmodload zsh/zprof && zprof

autoload -Uz run-help
autoload -Uz add-zsh-hook
autoload -Uz colors && colors
# autoload -Uz compinit && compinit -u
autoload -Uz is-at-least

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
alias vi="nvim -u NONE --noplugin"
alias vim="nvim"

alias update="~/.dotfiles/script/update"


# peco
setopt hist_ignore_all_dups

function peco_select_history() {
  local tac
  if which tac > /dev/null; then
    tac="tac"
  else
    tac="tail -r"
  fi
  BUFFER=$(fc -l -n 1 | eval $tac | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco_select_history
bindkey '^r' peco_select_history
function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src
