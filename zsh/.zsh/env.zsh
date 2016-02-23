export PAGER=vimpager
export EDITOR=vim
export TERM=xterm-256color

if [[ $(uname -o) == 'Cygwin' ]]; then
  export GROFF_NO_SGR=1
  export PAGER=less
fi
