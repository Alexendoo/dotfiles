export EDITOR=vim
export TERM=xterm-256color
export PAGER=less

if [ -f ~/go ]; then
  export GOPATH=~/go
fi

if [[ $(uname -o) == Cygwin ]]; then
  export GROFF_NO_SGR=1
fi