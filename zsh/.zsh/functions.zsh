serve () {
  browser-sync start --port $(shuf -i 49152-65535 -n 1) --no-ui --no-notify --server $@
}

listen () {
  trap "return 0" INT
  while true; do
    nc -l $@ || return 1
    printf "\x1b[34m――――― %s ―――――\x1b[0m\n" "$(date +"%T.%3N")"
  done
}
