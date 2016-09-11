path=(
  ~/.n/bin
  ~/.gem/ruby/*/bin(Nn[-1])
  ~/.node_modules/bin
  ~/.cargo/bin
  ~/go/bin
  $path
)
path=( ${(u)^path:A}(N/) )
