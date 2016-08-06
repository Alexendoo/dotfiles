export EDITOR=vim
export TERM=xterm-256color
export PAGER=less
export GOPATH=~/go

if [[ $(uname -o) == Cygwin ]]; then
  export GROFF_NO_SGR=1
fi
