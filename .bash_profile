if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias ls='ls -G'
alias l='ls -G'
alias ll='ls -G'
alias la='ls -Ga'
alias awk='gawk'
alias emacs='emacs -nw'
alias e='emacs -nw'
alias vi='nvim'
alias vim='vim'
alias f='fuck'
alias openmd='open -a Typora.app'
alias ta='tmux attach -t base || tmux new -s base'

source ~/.nvm/nvm.sh

PS1='\h@mac:\w\$ '
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
export PS1

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export EDITOR=vim

source ~/.env

export GOPATH="/Users/rkd/./.gopath"

export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/Library/Haskell/bin:$PATH"
export TERM=screen-256color
eval "$(thefuck --alias)"
