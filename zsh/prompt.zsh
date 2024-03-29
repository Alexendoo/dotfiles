autoload -U vcs_info

precmd_prompt() {
  vcs_info
  # return status if ≠ 0
  PROMPT='%B%F{red}%(?..%? )%b%f'
  # user@host
  if (( EUID == 0 )); then
    PROMPT+='%F{red}%n%f@%M '
  else
    PROMPT+='%F{blue}%n%f@%M '
  fi
  # current directory, truncated to 40 chars
  PROMPT+='%B%40<..<%~%<<%b '
  # git/hg/etc information
  [[ -n "$vcs_info_msg_0_" ]] && PROMPT+="$vcs_info_msg_0_ "
  # % or # if root
  PROMPT+='%# '
}

precmd_title() {
  # set title to the current directory
  print -Pn '\e]0;%n@%M: %~\a'
}

precmd_functions+=(
  precmd_prompt
  precmd_title
)

add_vcs_style() {
  # regular prompt
  zstyle ":vcs_info:$1:*" formats       "%F{$2}[%F{green}%b%F{$2}]%f"
  # prompt with action (e.g. bisect)
  zstyle ":vcs_info:$1:*" actionformats "%F{$2}[%F{green}%b%f|%F{red}%a%F{$2}]%f"
}

zstyle ':vcs_info:*' enable git

add_vcs_style '*'   blue
add_vcs_style 'git' magenta

