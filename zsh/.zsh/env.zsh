export PAGER=vimpager
export EDITOR=vim
export TERM=xterm-256color

[[ $(uname -o) == 'Cygwin' ]] || exit 0

export GROFF_NO_SGR=1
export PAGER=less
