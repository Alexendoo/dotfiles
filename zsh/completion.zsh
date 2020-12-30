autoload -U compinit
compinit -d ~/.cache/zcompdump

(( $+commands[dircolors] )) && eval $(dircolors -b)

# case insensitive when all lower
zstyle ':completion:*'              matcher-list 'm:{a-z}={A-Z}'

# enable completion menu
zstyle ':completion:*'              menu select

# select first entry with cd -[tab]
zstyle ':completion:*:*:cd:*:directory-stack' menu yes select

# separate menu into groups
zstyle ':completion:*:matches'      group true
zstyle ':completion:*'              group-name ''

# provide descriptions for arguments
zstyle ':completion:*:options'      description true

# provide generated descriptions if available
zstyle ':completion:*:options'      auto-description '%d'

# completion formatting
zstyle ':completion:*:warnings'     format '%F{red}no matches:%f %d'
zstyle ':completion:*:descriptions' format '%F{red}completing %B%d%b%f'
zstyle ':completion:*:messages'     format '%F{red}%d%f'

# directory colour completion
zstyle ':completion:*:default'      list-colors ${(s.:.)LS_COLORS}

# add sections to man(1) completion
zstyle ':completion:*:manuals'      separate-sections true
zstyle ':completion:*:manuals.*'    insert-sections   true

# Ignore ORIG_HEAD, it competes with origin for tab complete
zstyle ':completion:*:complete:git*:*:heads-local' ignored-patterns ORIG_HEAD

# https://github.com/junegunn/fzf
if [[ -f /usr/share/fzf/completion.zsh ]]; then
  export FZF_COMPLETION_TRIGGER=']]'
  source /usr/share/fzf/completion.zsh
fi
