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

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# set EDITOR to vim
export EDITOR=vim

plugins=(docker)
