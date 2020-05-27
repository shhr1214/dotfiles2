alias emacs="emacs -nw"
alias emacs-with-window="\emacs"
alias e="emacs"
alias ew="emacs-with-window"
alias vi="nvim -u NONE --noplugin"
alias vim="nvim"

alias spacemacs="rm ${HOME}/.emacs.d && ln -fs ${HOME}/.config/spacemacs.emacs.d ${HOME}/.emacs.d && emacs"
alias doomemacs="rm ${HOME}/.emacs.d && ln -fs ${HOME}/.config/doom.emacs.d ${HOME}/.emacs.d && emacs"

export PATH="${HOME}/.config/doom.emacs.d/bin:${PATH}"
