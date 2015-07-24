# set path
PATH="/usr/local/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"

# load perlbrew, if installed
if [[ -f "$HOME/.perlbrew/etc/bashrc" ]]
then
 export PERLBREW_ROOT=$HOME/.perlbrew
 source $HOME/.perlbrew/etc/bashrc
fi

# fix vim colorscheme in tmux by re-setting screen-variable
# to the corresponding 256 color variant
case "$TERM" in
  xterm) TERM="xterm-256color" ;;
  screen) TERM="screen-256color" ;;
esac

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL=

