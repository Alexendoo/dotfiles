path=(
  ~/.cargo/bin
  ~/.gem/ruby/*/bin(Nn[-1])
  ~/.n/bin
  ~/.config/yarn/global/node_modules/.bin
  ~/.node_modules/bin
  ~/go/bin
  $path
)
path=( ${(u)^path:A}(N/) )
