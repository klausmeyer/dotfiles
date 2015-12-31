# km.zsh-theme
#
# Author: Klaus Meyer
# URL: http://www.klaus-meyer.net/
# Repo: https://github.com/klausmeyer/oh-my-zsh
# Direct Link: https://github.com/klausmeyer/oh-my-zsh/blob/master/themes/km.zsh-theme
#

eval white='$FG[255]'
eval dark_blue='$FG[032]'
eval light_blue='$FG[075]'
eval orange='$FG[214]'
eval purple='$FG[105]'

# $dark_blue time: $(date)\

PROMPT='%{$dark_blue%}[ \
$light_blue%n\
$white at\
$light_blue %m\
$white in\
$light_blue %~\
$dark_blue ]\
$dark_blue $(which rvm-prompt > /dev/null && rvm-prompt)\
$dark_blue $(git_prompt_info)
$purple%(!.#.»)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="(branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$orange*"
ZSH_THEME_GIT_PROMPT_SUFFIX="$dark_blue)"

