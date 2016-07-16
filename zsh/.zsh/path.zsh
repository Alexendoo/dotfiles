export PATH
path=(
  $path
  ~/.gem/ruby/*/bin(Nn[-1])
  ~/.node_modules/bin
  ~/.cargo/bin
)
path=( ${(u)^path:A}(N/) )
