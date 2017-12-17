umask 022
limit coredumpsize 0
bindkey -d
bindkey -e

# prompt
autoload -Uz colors
colors

PROMPT="%(?.%{${fg[cyan]}%}.%{${fg[red]}%})[%n@%m]%{$reset_color%}"
RPROMPT="%(?.%{${fg[cyan]}%}.%{${fg[red]}%})[%~]%{${reset_color}%}"

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
PROMPT=$PROMPT'${vcs_info_msg_0_} '

# auto complete
autoload -Uz compinit
compinit

# alias
alias ls=exa
alias ll="exa -l"

alias emacs="emacs -nw"
alias vi="nvim -u NONE --noplugin"
alias vim="nvim"

# その他
source ${DOTFILES}/editor/export.zsh
source ${DOTFILES}/lang/export.zsh
