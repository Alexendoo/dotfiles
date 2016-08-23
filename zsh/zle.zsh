autozle() {
  emulate -L zsh
  autoload -U $1 && zle -N $1
}

# enter keypad transmit mode whilst in the zle - terminfo(5)
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
    function zle-line-init () {
        print -n ${terminfo[smkx]}
    }
    function zle-line-finish () {
        print -n ${terminfo[rmkx]}
    }
    zle -N zle-line-init
    zle -N zle-line-finish
fi

# emacs like key bindings
bindkey -e

# up/down -- search history using current line
bindkey "${terminfo[kcuu1]}" up-line-or-search
bindkey "${terminfo[kcud1]}" down-line-or-search

# shift + right/left -- don't enter junk text into buffer
bindkey "${terminfo[kRIT]}" forward-char
bindkey "${terminfo[kLFT]}" backward-char

# shift + tab -- back one position in autocomplete
zmodload -i zsh/complist
autozle menuselect
bindkey -M menuselect "${terminfo[kcbt]}" reverse-menu-complete

# home/end -- beginning/end of line
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

# ctrl + right/left -- move words
bindkey '\e[1;5C' forward-word
bindkey '\e[1;5D' backward-word

# ctrl + r -- pattern search history
bindkey '^R' history-incremental-pattern-search-backward

# alt + # -- comment line and enter (bash muscle memory)
bindkey '^[#' comment-line

comment-line() {
  BUFFER="#$BUFFER"
  zle accept-line
}
zle -N comment-line