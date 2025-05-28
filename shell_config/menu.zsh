#! /usr/bin/env zsh

autoload -Uz compinit && compinit

setopt globdots
setopt auto_cd
setopt SHARE_HISTORY

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Enable menu selection for completions
zstyle ':completion:*' menu select

# Customize the appearance of the menu
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}  # Use LS_COLORS for file type colors
zstyle ':completion:*' list-colors 'di=34;1' 'ln=35' 'ex=32' 'fi=0'  # Custom colors for specific file types
zstyle ':completion:*' format $'\e[1;33m -- %d -- \e[0m'  # Yellow header for completion sections
zstyle ':completion:*' group-name ''  # Group related completions together
zstyle ':completion:*:descriptions' format $'\e[1;33m%d\e[0m'  # Yellow descriptions
zstyle ':completion:*:messages' format $'\e[1;31m%d\e[0m'  # Red for messages
zstyle ':completion:*:warnings' format $'\e[1;31mNo matches for: %d\e[0m'  # Red for no matches
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'  # Case-insensitive and partial matching
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s  # Show scroll position
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s  # Prompt for more completions

# Colors for the menu select interface
zstyle ':completion:*:*:*:*:*' list-colors 'ma=48;5;200;38;5;15'  # Highlighted selection: black background, white text
zstyle ':completion:*' cursor show  # Show cursor in menu
zstyle ':completion:*' verbose yes  # Show verbose output for better readability
zstyle ':completion:*' list-dirs-first true  # Show directories before files

# Optional: Improve performance for large completion lists
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path ~/.zsh/cache

# Set autocompletion for functions

compdef _restart restart
