alias stage1='RUSTUP_TOOLCHAIN=stage1 LD_LIBRARY_PATH=$(rustc +stage1 --print target-libdir)'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

alias e='code'
alias h='hexyl -v'
alias p='less'
alias se='sudoedit'
alias help='run-help'

alias grep='grep --color=auto'
alias rg='rg --smart-case --hidden --glob=!.git --sort=path'
alias mkdir='mkdir -p'

alias ls='ls --group-directories-first --color --file-type'
alias l='ls -lh'
alias la='ls -lha'
alias lh='la'
alias ll='la'

alias sc='openssl s_client -connect'
alias mirror='rsync -rPhity --delete-after'

alias system='sudo systemctl'
alias journal='sudo journalctl'
alias s='sudo systemctl'
alias j='sudo journalctl'

alias ff="git merge --ff-only"
alias g="git"
alias ga="git add"
alias gb="git bisect"
alias gbr="git branch"
alias gc="git commit"
alias gca="git commit -a"
alias gch="git checkout"
alias gcm="git commit -m"
alias gd="git diff"
alias gds="git diff --staged"
alias gdw="git diff --word-diff"
alias gf="git fetch"
alias gfa="git fetch --all --prune --tags"
alias gl="git log --stat"
alias gm="git merge"
alias gr="git rebase"
alias gs="git status"

gitcommands=(
  # Core git commands
  add am annotate apply archive bisect blame branch checkout
  cherry cherry-pick clean clone commit count-objects describe
  fetch filter-branch for-each-ref log ls-files ls-remote
  ls-tree merge pull push rebase reflog remote reset revert
  shortlog show stage stash status submodule subtree tag
  whatchanged
)

for gitcommand in $gitcommands; do
  alias "$gitcommand"="git $gitcommand"
done

unset gitcommand gitcommands
