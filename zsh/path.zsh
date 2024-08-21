path=(
  ~/.local/bin
  ~/.cargo/bin
  ~/.node_modules/bin
  $path
)
path=( ${(u)^path:A}(N/) )
