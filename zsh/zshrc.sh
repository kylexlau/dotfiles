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

#  zkbd
autoload zkbd
# [[ ! -d ~/.zkbd ]] && mkdir ~/.zkbd
# [[ ! -f ~/.zkbd/$TERM-$VENDOR-$OSTYPE ]] && zkbd
# source  ~/.zkbd/$TERM-$VENDOR-$OSTYPE
# setup key accordingly
[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
[[ -n "${key[Up]}"      ]]  && bindkey  "${key[Up]}"      up-line-or-history
[[ -n "${key[Down]}"    ]]  && bindkey  "${key[Down]}"    down-line-or-history
[[ -n "${key[Left]}"    ]]  && bindkey  "${key[Left]}"    backward-char
[[ -n "${key[Right]}"   ]]  && bindkey  "${key[Right]}"   forward-char

# source
sdir=~/dot-files/zsh
source $sdir/alias.sh
source $sdir/env.sh
source $sdir/func.sh
