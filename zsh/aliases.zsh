alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

alias e='code'
alias p='less'
alias s='screen -R'
alias se='sudoedit'
alias help='run-help'
alias grep='grep --color=auto'

alias ls='ls --group-directories-first --color --file-type'
alias l='ls -lh'
alias la='ls -lha'
alias lh='la'
alias ll='la'

alias mosh='mosh --predict=experimental --no-init'
alias sc='openssl s_client -connect'
alias mirror='rsync -rPhity --delete-after'

alias what='file -krzs'
alias mkdir='mkdir -p'

alias system='sudo systemctl'
alias journal='sudo journalctl'

alias vup='vagrant up && vagrant ssh && vagrant destroy'

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

# https://github.com/tj/git-extras
if (( $+commands[git-extras] )); then
  gitcommands+=(
    archive-file authors back bug changelog chore commits-since
    contrib count create-branch delete-branch
    delete-merged-branches delete-submodule delete-tag delta
    effort feature fresh-branch graft guilt ignore-io ignore
    line-summary local-commits merge-into merge-repo missing
    rebase-patch refactor release rename-tag repl reset-file
    root setup show-merged-branches show-tree
    show-unmerged-branches squash summary undo
  )
fi

# https://github.com/paulirish/git-recent
if (( $+commands[git-recent] )); then
  gitcommands+=(recent)
fi

for gitcommand in $gitcommands; do
  alias "$gitcommand"="git $gitcommand"
done

unset gitcommand gitcommands

# https://github.com/github/hub
if (( $+commands[hub] )); then
  alias create='hub create'
  alias browse='hub browse'
  alias compare='hub compare'
  alias fork='hub fork'
  alias pull-request='hub pull-request -o'
  alias ci-status='hub ci-status -v'
  alias ci='hub ci-status -v'
fi

if [[ $(uname -o) == 'Cygwin' ]]; then
  alias code='code.cmd'
  alias c='cmd /c start'
  alias win='cmd /c'
  alias heroku='heroku.bat'
fi

if (( $+commands[yaourt] )); then
  alias up="yaourt -Syua"
fi

alias yui="yarn upgrade-interactive"
alias ygui="yarn global upgrade-interactive"
