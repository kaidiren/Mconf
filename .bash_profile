if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias ls='ls -G'
alias l='ls -G'
alias ll='ls -G'
alias la='ls -Ga'
alias awk='gawk'

source ~/.nvm/nvm.sh

export PS1='\h@mac:\w\$ '
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export EDITOR=vim

source ~/.env

export GOPATH="/Users/rkd/./.gopath"

cd() {
  if [ "$1" -eq "." ]; then
  builtin cd .
  elif [ "$1" -eq ".." ]; then
  builtin cd ..
  elif [ "$1" -eq "..." ]; then
  builtin cd ../..
  elif [ "$1" -eq "...." ]; then
  builtin cd ../../..
  elif [ "$1" -eq ".." ]; then
  builtin cd ../../../..
  elif [ "$1" -eq ".." ]; then
  builtin cd ../../../../..
  elif
  builtin cd "$1"
  fi
}
