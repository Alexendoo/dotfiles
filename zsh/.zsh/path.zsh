export PATH
path=(
  $path
  ~/.gem/ruby/*/bin(Nn[-1])
  ~/.node_modules/bin
)
path=( ${(u)^path:A}(N/) )
