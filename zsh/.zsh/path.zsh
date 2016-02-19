export PATH
path=(
  ~/.gem/ruby/*/bin(Nn[-1])
  ~/.node_modules/bin
  '/cygdrive/e/Nexus Root Toolkit/data'
  $path
)
path=( ${(u)^path:A}(N/) )
