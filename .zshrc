export ZSH="/home/makonnen/.oh-my-zsh"

ZSH_THEME="tjkirch"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


# Alias


## Source

alias zshreload='source ~/.zshrc'

## Navigation

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

## Git
alias ga='git add'
alias ga.='git add -A'
alias gb='git branch'
alias gbnew='git checkout -b'
alias gch='git checkout'
alias gcl='git clone'
alias gpl='git pull'
alias gc='git commit'
alias gp='git push'


## Config editing
alias i3edit='vim ~/.i3/config'
alias vimedit='vim ~/.vimrc'
alias zshedit='vim ~/.zshrc'
