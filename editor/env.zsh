alias emacs="emacs -nw"
alias emacs-with-window="\emacs"
alias e="emacs"
alias ew="emacs-with-window"
alias vi="nvim -u NONE --noplugin"
alias vim="nvim"

alias spacemacs="rm ${HOME}/.config/emacs && ln -fs ${HOME}/.config/spacemacs.emacs.d ${HOME}/.config/emacs && emacs"
alias doomemacs="rm ${HOME}/.config/emacs && ln -fs ${HOME}/.config/doom.emacs.d ${HOME}/.config/emacs && emacs"

export PATH="${HOME}/.config/doom.emacs.d/bin:${PATH}"
