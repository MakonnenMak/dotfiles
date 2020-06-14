# ZSH Path
export ZSH="/home/makonnen/.oh-my-zsh"
# Language Settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTS-8
export PATH="/home/makonnen/.local/bin:$PATH"

# Editor Options VISUAL=vim; export VISUAL EDITOR=vim; export EDITOR
#env var

ZSH_THEME="tjkirch"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Pkugins
plugins=(
  gitfast
  python 
  zsh-autosuggestions
  vi-mode
  docker docker-compose
)

source $ZSH/oh-my-zsh.sh


# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


# Alias
alias sicko='sudo'
alias zshreload='source ~/.zshrc'
alias wf='systemctl restart connman'
alias vim='nvim'
alias v='nvim'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias sl='ls'

alias pywal='wal -i $1'


# Git
alias ga='git add'
alias ga.='git add -A'
alias gb='git branch'
alias gbnew='git checkout -b'
alias gch='git checkout'
alias gcl='git clone'
alias gpl='git pull'
alias gc='git commit -m'
alias gp='git push'

#Random
alias commentecho="grep -E '(/\*([^*]|(\*+[^*/]))*\*+/)|(//.*)'" #echos all comments in code
alias docker="sudo docker"

# Config Editing
alias dunstedit='vim ~/.config/dunst/dunstrc'
alias i3edit='vim ~/.i3/config'
alias zshedit='vim ~/.zshrc'
alias vimedit="vim ~/.vimrc"
alias dunstreload='killall dunst;systemctl --user start dunst.service;notify-send "TEST"'




#Notes
function notes(){ FILENAME_MD=$1;FILENAME=${FILENAME_MD//.md}; onmodify $FILENAME_MD pandoc -o $FILENAME.pdf $FILENAME_MD}
onmodify() {
    TARGET=${1:-.}; shift
    CMD="$@"

    echo "$TARGET" "$CMD"
    while inotifywait --exclude '.git' -qq -r -e close_write,moved_to,move_self $TARGET; do
        sleep 0.2
        bash -c "$CMD"
        echo
    done
}

export FZF_DEFAULT_OPS="--extended"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
