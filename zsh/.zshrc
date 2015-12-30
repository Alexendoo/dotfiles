export PAGER=vimpager
export EDITOR=vim
export TERM=xterm-256color

sources=(
  ~/.zsh/*.zsh
  /usr/share/doc/pkgfile/command-not-found.zsh
)
sources=( ${(u)^sources:A}(N.) )

for config in $sources; do
  source $config
done

# Disable the [nyae] completions
unsetopt correct

# cd -NUM uses 0 as most recent
setopt pushdminus
