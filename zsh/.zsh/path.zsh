export PATH
path=(
  ~/.gem/ruby/*/bin(Nn[-1])
  ~/.node_modules/bin
  $path
)
path=( ${(u)^path:A}(N/) )
