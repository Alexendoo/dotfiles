export EDITOR=vim
export TERM=xterm-256color
export PAGER=less

if [[ $(uname -o) == Cygwin ]]; then
  export GROFF_NO_SGR=1
fi
