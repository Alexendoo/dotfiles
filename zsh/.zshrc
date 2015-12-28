export PAGER=vimpager
export EDITOR=vim
export TERM=xterm-256color

for config in ~/.zsh/*.zsh
  do source $config
done

source /usr/share/doc/pkgfile/command-not-found.zsh

# Disable the [nyae] completions
unsetopt correct

# cd -NUM uses 0 as most recent
setopt pushdminus
