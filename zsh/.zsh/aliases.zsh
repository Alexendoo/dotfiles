alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias serve='browser-sync start --server'

alias e='atom'
alias s='screen -R'

alias mosh='mosh --predict=experimental --no-init'
alias sc='openssl s_client -connect'
alias mirror='rsync -rPhity --delete-after'

alias what='file -krzs'
alias mkdir='mkdir -p'

alias ff='git merge --ff-only'
alias g='git'
alias ga='git add'
alias gb='git bisect'
alias gc='git commit'
alias gca='git commit -a'
alias gch='git checkout'
alias gcm='git commit -m'
alias gd='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gl='git log --stat'
alias gm='git merge'
alias gr='git rebase'
alias gs='git status'

if [[ $(uname -o) == 'Cygwin' ]]; then
  alias e='atom.cmd'
  alias win='cmd /c'
fi
