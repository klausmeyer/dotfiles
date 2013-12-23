# set path
PATH="$HOME/.rvm/bin:/usr/local/bin:/usr/sbin:/sbin:$PATH"

# load perlbrew, if installed
if [[ -f "$HOME/.perlbrew/etc/bashrc" ]]
then
  export PERLBREW_ROOT=$HOME/.perlbrew
  source $HOME/.perlbrew/etc/bashrc
fi

# load rvm, if installed
if [[ -s "$HOME/.rvm/scripts/rvm" ]]
then
  source "$HOME/.rvm/scripts/rvm"
fi

# fix vim colorscheme in tmux by re-setting screen-variable
# to the corresponding 256 color variant
case "$TERM" in
  xterm) TERM="xterm-256color" ;;
  screen) TERM="screen-256color" ;;
esac
