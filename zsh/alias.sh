# aliases
alias net='sudo /etc/init.d/networking restart'
alias ed='emacs --daemon'
#alias e="emacsclient -c --no-wait -e '(load-file "~/emacs/gui.el")'"
alias sc='screen'
alias wgetall="wget -c -r -np -k -L -p"
alias du1='du -h --max-depth=1'

# ls
if [ "$TERM" != 'dumb' ]; then
  alias ls='ls --color=auto'
  alias ll='ls -l'
  alias l.='ls -d .[a-zA-Z]'
  alias dir='ls --format=vertical'
  alias vdir='ls --format=long'
fi

# simplyfy
alias tarz='tar -zxvf'
alias tarj='tar -jxvf'
alias cls='clear'
alias la='ls -lA'
alias lsr='ls -lSr'
alias ltr='ls -ltr'
alias pg='ps aux | grep'
alias bc='bc -ql'

# security
#alias rm='rm -i'
#alias cp='cp -i'
#alias mv='mv -i'
#alias ln='ln -i'

