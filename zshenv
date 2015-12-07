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

# http://superuser.com/questions/433746/is-there-a-fix-for-the-too-many-open-files-in-system-error-on-os-x-10-7-1
ulimit -n 4096

# Keypad (source http://superuser.com/questions/742171/zsh-z-shell-numpad-numlock-doesnt-work)
# 0 . Enter
bindkey -s "^[Op" "0"
bindkey -s "^[Ol" "."
bindkey -s "^[OM" "^M"
# 1 2 3
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
# 4 5 6
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
# 7 8 9
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
# + -  * /
bindkey -s "^[Ok" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/"
