# zsh main config
# openssh ssh-agent
# eval `ssh-agent`

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory extendedglob
unsetopt beep
bindkey -e

zstyle :compinstall filename '/home/kyle/.zshrc'

# zsh-completion
autoload -Uz compinit
compinit
zstyle ':completion::complete:*' use-cache 1

# source
sdir=~/dot/zsh
source $sdir/alias.sh
source $sdir/env.sh
source $sdir/func.sh

export XMODIFIERS=@im=SCIM    #case matters for this variable!
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
