export ZSH="/home/makonnen/.oh-my-zsh"

ZSH_THEME="tjkirch"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


# Alias
alias vim='nvim'


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
alias i3edit='vim ~/.config/i3/config'
alias vimedit='vim ~/.vimrc'
alias zshedit='vim ~/.zshrc'
alias kittyedit='vim ~/.config/kitty/kitty.conf'
alias gtkfontedit='vim ~/.config/gtk-3.0/settings.ini'

## Fedora help
alias font_settings='$HOME/.config/gtk-3.0/settings.ini'

# Helper functions
function reload_gtk_theme() {
  theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
  gsettings set org.gnome.desktop.interface gtk-theme ''
  sleep 1
  gsettings set org.gnome.desktop.interface gtk-theme $theme
}
