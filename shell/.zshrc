umask 022
limit coredumpsize 0
bindkey -d
bindkey -e

# prompt
export TERM='xterm-256color'
autoload -Uz colors
colors

PROMPT="%(?.%{${fg[cyan]}%}.%{${fg[red]}%})[%n@%m:%~]%{$reset_color%}"
# PROMPT="%(?.%{${fg[cyan]}%}.%{${fg[red]}%})[%n@%m]%{$reset_color%}"
# RPROMPT="%(?.%{${fg[cyan]}%}.%{${fg[red]}%})[%~]%{${reset_color}%}"

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

# auto complete
autoload -Uz compinit && compinit -u

# if (which zprof > /dev/null 2>&1) ;then
#   zprof
# fi
