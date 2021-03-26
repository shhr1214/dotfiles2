# alias ls="lsd --group-dirs first "
alias ls="exa --group-directories-first "
alias ll="ls -l "

alias less="bat"
alias diff="delta"

alias lg="lazygit"

alias ssh="TERM=xterm-256color ssh"

alias openblog="open https://shhr1214.gitlab.io/"
alias openblog-dev="open http://localhost:1313/"
alias blogrepo="cd ${HOME}/src/gitlab.com/shhr1214/shhr1214.gitlab.io"

alias emacs="emacs -nw"
alias emacs-with-window="\emacs"
alias e="emacs"
alias ew="emacs-with-window"
alias vi="nvim -u NONE --noplugin"
alias vim="nvim"

alias spacemacs="rm ${XDG_CONFIG_HOME}/emacs && ln -fs ${XDG_CONFIG_HOME}/spacemacs.emacs.d ${XDG_CONFIG_HOME}/emacs && emacs"
alias doomemacs="rm ${XDG_CONFIG_HOME}/emacs && ln -fs ${XDG_CONFIG_HOME}/doom.emacs.d      ${XDG_CONFIG_HOME}/emacs && emacs"
export SPACEVIMDIR="${XDG_CONFIG_HOME}/SpaceVim/"

export PATH="${XDG_CONFIG_HOME}/doom.emacs.d/bin:${PATH}"
export PATH="/usr/local/bin:${PATH}"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:/usr/local/opt/coreutils/libexec/gnubin:${PATH}"

export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"
