alias emacs="emacs -nw"
alias emacs-with-window="\emacs"
alias e="emacs"
alias ew="emacs-with-window"
alias vi="nvim -u NONE --noplugin"
alias vim="nvim"

alias spacemacs="rm ${HOME}/.emacs.d && ln -fs ${HOME}/.spacemacs.emacs.d ${HOME}/.emacs.d && emacs"
alias doomemacs="rm ${HOME}/.emacs.d && ln -fs ${HOME}/.doom.emacs.d ${HOME}/.emacs.d && emacs"

export PATH="${HOME}/.doom.emacs.d/bin:${PATH}"
