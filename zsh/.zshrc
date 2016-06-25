sources=(
  ~/.zsh/*.zsh
  /etc/zsh_command_not_found
  /usr/share/doc/pkgfile/command-not-found.zsh
  ~/.travis/travis.sh
)
sources=( ${(u)^sources:A}(N.) )

for config in $sources; do
  source $config
done
