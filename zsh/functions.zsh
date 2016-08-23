listen() {
  trap "return 0" INT
  while true; do
    nc -l $@ || return 1
    printf "\x1b[34m――――― %s ―――――\x1b[0m\n" "$(date +"%T.%3N")"
  done
}

mkcd() {
  [ -z "$1" ] && return 1
  mkdir -p "$1"
  cd "$1"
}

# http://zshwiki.org/home/builtin/functions/zmv
autoload -U zmv

# zsh builtin help command
unalias run-help
autoload -U run-help
