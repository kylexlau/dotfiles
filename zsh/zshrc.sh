# zsh main config
# openssh ssh-agent
# eval `ssh-agent`

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt appendhistory extendedglob
unsetopt beep
bindkey -e

zstyle :compinstall filename '/home/kyle/.zshrc'

# zsh-completion
autoload -Uz compinit
compinit
zstyle ':completion::complete:*' use-cache 1

# source
sdir=~/dot-files/zsh
source $sdir/alias.sh
source $sdir/env.sh
source $sdir/func.sh
