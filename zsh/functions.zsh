pr() {
  local ref="$(gh pr view $1 --json headRefName -q .headRefName)"
  gh pr checkout --branch "pr/$1/$ref" "$@"
}

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

# usage: punch port [external_port]
punch() {
  local pnpstatus=$(upnpc -s)

  local lanip=$(<<< $pnpstatus grep 'Local LAN ip address :' | cut -d' ' -f6)

  upnpc -a $lanip $1 ${2:-$1} tcp
}

if (( $+commands[findpkg] )); then
  command_not_found_handler() {
    findpkg "$1"
  }
fi

# http://zshwiki.org/home/builtin/functions/zmv
autoload -U zmv

# zsh builtin help command
unalias run-help 2>/dev/null
autoload -U run-help \
    run-help-ip \
    run-help-git \
    run-help-sudo \
    run-help-openssl \

