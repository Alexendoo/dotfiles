export PATH
path=(
  $path
  ~/.gem/ruby/*/bin(Nn[-1])
  ~/.node_modules/bin
  /cygdrive/c/users/Alex/AppData/Local/Android/sdk/platform-tools
)
path=( ${(u)^path:A}(N/) )
