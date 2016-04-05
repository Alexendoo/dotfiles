export EDITOR=vim
export TERM=xterm-256color

if which vimpager >/dev/null 2>&1; then
  export PAGER=vimpager
else
  export PAGER=less
fi

if [[ $(uname -o) == Cygwin ]]; then
  export GROFF_NO_SGR=1
fi
