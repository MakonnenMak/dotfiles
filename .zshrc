# ZSH Path
export ZSH="/home/makonnen_m/.oh-my-zsh"
VISUAL=vim; export VISUAL EDITOR=vim; export EDITOR
#env var
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
  vi-mode
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
alias dadaconnect="ssh -p 3022 mm3xy@127.0.0.1"
alias dadapull="echo temp"

# Alias
alias sicko='sudo'
alias zshedit='vim ~/.zshrc'
alias zshreload='source ~/.zshrc'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias sl='ls'

# Projects/Coding Navigation
alias code='cd /home/makonnen_m/Documents/Code/'

# School Navigation
alias school='cd /home/makonnen_m/Documents/School'
# School Comparc
alias mvhcl='hclmv() { cp $1 /home/makonnen_m/Documents/School/comp_arch/labs/hcl };hclmv'
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
alias vim='neovim'
alias backupnow='deja-dup --backup'
alias ytmp3dn='youtube-dl --extract-audio --audio-format mp3'
alias jarstart='/opt/bin/java -jar'
alias peda="gdb vuln1"
alias xclip="xclip -selection c"
alias cpdir="pwd | xclip"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/makonnen_m/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/makonnen_m/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/makonnen_m/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/makonnen_m/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
