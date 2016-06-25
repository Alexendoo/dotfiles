alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

alias e='atom'
alias s='screen -R'

alias ng='noglob'

alias mosh='mosh --predict=experimental --no-init'
alias sc='openssl s_client -connect'
alias mirror='rsync -rPhity --delete-after'

alias what='file -krzs'
alias mkdir='mkdir -p'

alias ff='git merge --ff-only'
alias g='git'
alias ga='git add'
alias gb='git bisect'
alias gbr='git branch'
alias gc='git commit'
alias gca='git commit -a'
alias gch='git checkout'
alias gcm='git commit -m'
alias gd='git diff'
alias gds='git diff --staged'
alias gdw='git diff --word-diff'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gl='git log --stat'
alias gm='git merge'
alias gr='git rebase'
alias gs='git status'
alias pull='git pull'
alias push='git push'

alias system='sudo systemctl'
alias journal='sudo journalctl'

if [[ $(uname -o) == 'Cygwin' ]]; then
  alias e='atom.cmd'
  alias c='cmd /c start'
  alias win='cmd /c'
  alias heroku='heroku.bat'
fi
