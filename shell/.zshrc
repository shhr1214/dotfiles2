umask 022
limit coredumpsize 0
bindkey -d
bindkey -e

# prompt
autoload -Uz colors
colors

PROMPT="%(?.%{${fg[cyan]}%}.%{${fg[red]}%})[%n@%m]%{$reset_color%}"
RPROMPT="%(?.%{${fg[cyan]}%}.%{${fg[red]}%})[%~]%{${reset_color}%}"

# zcompile
if [ $DOTFILES/shell/.zshrc -nt ~/.zshrc.zwc ]; then
  zcompile ~/.zshrc
fi

# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
PROMPT=$PROMPT'${vcs_info_msg_0_} '

# rust
fpath+=${HOME}/.zfunc

# auto complete
autoload -Uz compinit && compinit -u

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

# なんかよくわからんけど rbenv こける
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# その他
source ${DOTFILES}/editor/export.zsh
source ${DOTFILES}/lang/export.zsh

# if (which zprof > /dev/null 2>&1) ;then
#   zprof
# fi
