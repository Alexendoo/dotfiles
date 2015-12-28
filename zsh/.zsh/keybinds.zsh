# meta - . => meta - m = !:-2
autoload -Uz copy-earlier-word
zle -N copy-earlier-word
bindkey "^[m" copy-earlier-word

# Tab something, ctrl f to search through the commands or help text
bindkey -M menuselect '^F' history-incremental-search-forward
