# point to the oh-my-zsh config
ZSH=$HOME/.oh-my-zsh

# use my custom theme
ZSH_THEME="km"

# no auto updates
DISABLE_AUTO_UPDATE="true"

# no colors
DISABLE_LS_COLORS="true"

# no auto title
# DISABLE_AUTO_TITLE="true"

plugins=(docker kubectl git)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

alias gpu="git push -u origin HEAD"
alias gp="git push"
alias gpf="git push --force"

# set EDITOR to vim
export EDITOR=vim

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
