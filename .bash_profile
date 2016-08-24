if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias ls='ls -G'
alias l='ls -G'
alias ll='ls -G'
alias la='ls -Ga'
alias awk='gawk'

source ~/.nvm/nvm.sh

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PS1='\h@mac:\w\$ '
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
export HOMEBREW_GITHUB_API_TOKEN="f47db601d69f29f1ba0087f1900969b9aab8e40f"
