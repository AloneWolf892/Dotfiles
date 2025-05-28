#! /usr/bin/env zsh

fpath+=$HOME/.shell_completion

export ZSH_PLUGINS=/usr/share/zsh/plugins/
export EDITOR=nvim

eval "$(starship init zsh)"
eval "$(dircolors -b)"

source $ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

for file in $HOME/.shell_config/*; do source $file; done
