autoload -U vcs_info

precmd () {
  vcs_info
  unset PROMPT
  PROMPT+='%B%F{red}%(?..%? )%b%f' # return status if ≠ 0
  PROMPT+='%F{blue}%n%f@%M ' # user@host
  PROMPT+='%B%40<..<%~%<<%b ' # current directory, truncated to 40 chars
  [[ -n "$vcs_info_msg_0_" ]] && PROMPT+="$vcs_info_msg_0_ "
  PROMPT+='%# '
}

zstyle ':vcs_info:*' enable git hg
# regular prompt
zstyle ':vcs_info:*' formats \
  '%F{magenta}[%F{green}%b%F{magenta}]%f'
# prompt with action (e.g. bisect)
zstyle ':vcs_info:*' actionformats \
  '%F{magenta}[%F{green}%b%f|%F{red}%a%F{magenta}]%f'
