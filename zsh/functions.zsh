chpwd() {
  print -l $PWD ${(u)dirstack} > $DIRSTACKFILE
}

listen() {
  trap "return 0" INT
  while true; do
    nc -l $@ || return 1
    printf "\x1b[34m――――― %s ―――――\x1b[0m\n" "$(date +"%T.%3N")"
  done
}

# http://zshwiki.org/home/builtin/functions/zmv
autoload -U zmv

# zsh builtin help command
unalias run-help
autoload -U run-help
