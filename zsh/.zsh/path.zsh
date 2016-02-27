export PATH
path=(
  $path
  ~/.gem/ruby/*/bin(Nn[-1])
  ~/.node_modules/bin
  '/cygdrive/e/Android/SDK/platform-tools'
)
path=( ${(u)^path:A}(N/) )
