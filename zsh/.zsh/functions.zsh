serve () {
  browser-sync start --port $(shuf -i 49152-65535 -n 1) --no-ui --no-notify --server $@
}
