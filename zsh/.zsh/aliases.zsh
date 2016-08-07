alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

alias e='atom'
alias p='less'
alias s='screen -R'

alias ng='noglob'

alias ls='ls --group-directories-first --color --file-type'
alias l='ls -lh'
alias la='ls -lha'
alias lh='la'
alias ll='la'

alias lad='ls -d .*(/)'
alias lsa='ls -a .*(.)'
alias lsbig='ls -flh *(.OL[1,10])'
alias lsd='ls -d *(/)'
alias lse='ls -d *(/^F)'
alias lsl='ls -l *(@)'
alias lsnew='ls -rtlh *(D.om[1,10])'
alias lsnewdir='ls -rthdl *(/om[1,10]) .*(D/om[1,10])'
alias lsold='ls -rtlh *(D.Om[1,10])'
alias lsolddir='ls -rthdl *(/Om[1,10]) .*(D/Om[1,10])'
alias lss='ls -l *(s,S,t)'
alias lssmall='ls -Srl *(.oL[1,10])'
alias lsw='ls -ld *(R,W,X.^ND/)'
alias lsx='ls -l *(*)'

alias mosh='mosh --predict=experimental --no-init'
alias sc='openssl s_client -connect'
alias mirror='rsync -rPhity --delete-after'

alias what='file -krzs'
alias mkdir='mkdir -p'

alias system='sudo systemctl'
alias journal='sudo journalctl'

alias init-nvm='source /usr/share/nvm/init-nvm.sh'

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
alias gfa="git fetch --all --prune"
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
if type git-extras > /dev/null; then
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
if type git-recent > /dev/null; then
  gitcommands+=(recent)
fi

for gitcommand in $gitcommands; do
  alias "$gitcommand"="git $gitcommand"
done

unset gitcommand gitcommands

# https://github.com/github/hub
if type hub > /dev/null; then
  alias create='hub create'
  alias browse='hub browse'
  alias compare='hub compare'
  alias fork='hub fork'
  alias pull-request='hub pull-request -o'
  alias ci-status='hub ci-status -v'
  alias ci='hub ci-status -v'
fi

if [[ $(uname -o) == 'Cygwin' ]]; then
  alias e='atom.cmd'
  alias c='cmd /c start'
  alias win='cmd /c'
  alias heroku='heroku.bat'
fi
