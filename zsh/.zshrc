zsh_dir=$(dirname $(readlink -f ~/.zshrc))

sources=(
  "$zsh_dir"/*.zsh
  /etc/zsh_command_not_found
)

fpath+=( ~/.local/share/zfunc )

for config in $sources; do
  if [[ -f "$config" ]]; then
    source $config
  fi
done

unset config sources
