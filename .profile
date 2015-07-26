parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

ppwd() {
  ~/.bin/ppwd
}

export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\$(ppwd)\[$(tput setaf 3)\]\$(parse_git_branch)\[$(tput sgr0)\] "

export HISTCONTROL=erasedups
export HISTSIZE=5000
shopt -s histappend
