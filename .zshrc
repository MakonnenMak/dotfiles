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
   export EDITOR='mvim'
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

# Git
alias ga='git add'
alias ga.='git add -A'
alias gb='git branch'
alias gbnew='git checkout -b'
alias gch='git checkout'
alias gcl='git clone'
alias gpl='git pull'
alias gc='git commit -m'

#Servers 
alias apachestop='sudo systemctl stop httpd'
alias apachestart='sudo systemctl start httpd'



#Applications
alias dropbox='./dropbox_uploader.sh'
alias chrome='/home/makonnen_m/Downloads/chrome-linux/./chrome'
alias win='cd /home/makonnen_m/pygrid/pygrid/ && nohup python pygrid.py &'

#Docker alias
alias dockbuild='sudo docker-compose build'
alias dockstatus='sudo systemctl status docker'
alias dockstart='sudo systemctl start docker'
alias dockstop='sudo systemctl stop docker'
alias dockex='sudo docker-compose up'


#Random
alias backupnow='deja-dup --backup'
alias ytmp3dn='youtube-dl --extract-audio --audio-format mp3'
alias jarstart='/opt/bin/java -jar'
alias peda="gdb vuln1"

