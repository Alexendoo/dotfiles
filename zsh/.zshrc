export PAGER=vimpager
export EDITOR=vim
export TERM=xterm-256color

alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias vpn='sudo systemctl start openvpn@London && sleep 3s && wanip'

alias e='atom'
alias s='screen -R'

alias what='file -krzs'
alias mkdir='mkdir -p'

alias g='git'
alias ga='git add'
alias gc='git commit'
alias gca='git commit -a'
alias gs='git status'
alias gd='git diff'
alias gf='git fetch'
alias gm='git merge'
alias gr='git rebase'
alias gch='git checkout'

unsetopt correct
source /usr/share/doc/pkgfile/command-not-found.zsh
export PATH=${PATH}:/home/alex/.gem/ruby/2.2.0/bin

