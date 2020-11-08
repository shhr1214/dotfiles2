alias emacs="emacs -nw"
alias emacs-with-window="\emacs"
alias e="emacs"
alias ew="emacs-with-window"
alias vi="nvim -u NONE --noplugin"
alias vim="nvim"

alias spacemacs="rm ${XDG_CONFIG_HOME}/emacs && ln -fs ${XDG_CONFIG_HOME}/spacemacs.emacs.d ${XDG_CONFIG_HOME}/emacs && emacs"
alias doomemacs="rm ${XDG_CONFIG_HOME}/emacs && ln -fs ${XDG_CONFIG_HOME}/doom.emacs.d      ${XDG_CONFIG_HOME}/emacs && emacs"

export PATH="${XDG_CONFIG_HOME}/doom.emacs.d/bin:${PATH}"
export SPACEVIMDIR="${XDG_CONFIG_HOME}/SpaceVim/"
