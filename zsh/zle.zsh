autozle() {
  emulate -L zsh
  autoload -U $1 && zle -N $1
}

# enter keypad transmit mode whilst in the zle
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

# show only commands matching the current line up to the cursor
bindkey "${terminfo[kcuu1]}" up-line-or-search
bindkey "${terminfo[kcud1]}" down-line-or-search

# shift + tab -- back one position in autocomplete
zmodload -i zsh/complist
autozle menuselect
bindkey -M menuselect "${terminfo[kcbt]}" reverse-menu-complete

# home/end -- beginning/end of line
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

# ctrl + right/left -- move words
# xterm
bindkey '\e[1;5C' forward-word
bindkey '\e[1;5D' backward-word
# urxvt
bindkey '\eOc' forward-word
bindkey '\eOd' backward-word
