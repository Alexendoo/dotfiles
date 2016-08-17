export PATH
path+=(
  ~/.gem/ruby/*/bin(Nn[-1])
  ~/.node_modules/bin
  ~/.cargo/bin
  ~/go/bin
)
path=( ${(u)^path:A}(N/) )
