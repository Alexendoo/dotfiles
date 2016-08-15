export EDITOR=vim
export TERM=xterm-256color
export PAGER=less

export HISTFILE=~/.zsh_history
export HISTSIZE=5000
export SAVEHIST=50000

export DIRSTACKSIZE=25
export DIRSTACKFILE=~/.cache/zdirs

[ -f $DIRSTACKFILE ] && dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )

if [ -f ~/go ]; then
  export GOPATH=~/go
fi

if [[ $(uname -o) == Cygwin ]]; then
  export GROFF_NO_SGR=1
fi

# less colours
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
