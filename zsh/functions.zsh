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
  local parts=('' ${(s:/:)PWD})
  local i=$#parts
  while (( i-- )); do
    local try_file="${(j:/:)parts[1,$i+1]}/node_modules/.bin/$1"
    if [[ -f "$try_file" ]]; then
      echo "found $try_file"
      "$try_file" ${@:2}
    fi
  done
}

update-bins() {
  (
    mkcd ${XDG_DATA_HOME:-~/.local/share}
    mkcd "bins"
    mkdir ".bin"


    repos=(
      "git@github.com:PotatoLabs/git-redate.git" "git-redate"
    )

    for ((i = 1; i <= $#repos; i+=2)); do
      repo=${repos[i]}
      link=${repos[i+1]}

      target=$repo:t:r

      if [[ -d $target ]]; then
        git --git-dir="$target/.git" pull --ff-only -v
      else
        git clone $repo $target
      fi

      ln -sf "$PWD/$target/$link" ".bin/$target"
    done
  )
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

