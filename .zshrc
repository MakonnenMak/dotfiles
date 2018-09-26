# ZSH Path
export ZSH="/home/makonnen_m/.oh-my-zsh"

ZSH_THEME="agnoster"
# looking in ~/.oh-my-zsh/themes/

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Pkugins
plugins=(
  gitfast
  catimg
  pip
  python 
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


# Alias
alias zshedit='vim ~/.zshrc'
alias zshreload='source ~/.zshrc'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Projects/Coding Navigation
alias code='cd /home/makonnen_m/Documents/Code/'

# School Navigation
alias school='cd /home/makonnen_m/Documents/School'
alias algo='school && cd algo'
alias asd='school && cd asd'
alias stesting='school && cd testing'

# Git
alias ga='git add'
alias ga.='git add -A'
alias gb='git branch'
alias gbnew='git checkout -b'
alias gch='git checkout'
alias gcl='git clone'
alias gpl='git pull'
alias gc='git commit -m'


#Random
alias backupnow='deja-dup --backup'
alias ytmp3dn='youtube-dl --extract-audio --audio-format mp3'
alias jarstart='/opt/bin/java -jar'
alias peda="gdb vuln1"
alias xclip="xclip -selection c"
