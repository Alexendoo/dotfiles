# git clone + cd into the directory
clcd() {
  [ -z "$1" ] && return 1
  git clone "$1"
  cd "$1:t:r"
}

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

# run a binary installed into a local node_modules folder
nr() {
  local -a parts
  local i try_file
  parts=('' ${(s:/:)PWD})
  i=$#parts
  while (( i-- )); do
    try_file="${(j:/:)parts[1,$i+1]}/node_modules/.bin/$1"
    if [[ -f "$try_file" ]]; then
      echo "found $try_file"
      "$try_file" ${@:2}
    fi
  done
}

# http://zshwiki.org/home/builtin/functions/zmv
autoload -U zmv

# zsh builtin help command
unalias run-help 2>/dev/null
autoload -U run-help \
    run-help-ip \
    run-help-git \
    run-help-sudo \
    run-help-openssl \

