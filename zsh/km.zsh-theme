# km.zsh-theme
#
# Author: Klaus Meyer
# URL: http://www.klaus-meyer.net/
# Repo: https://github.com/klausmeyer/oh-my-zsh
# Direct Link: https://github.com/klausmeyer/oh-my-zsh/blob/master/themes/km.zsh-theme
#
# Created on:		August 25, 2012
# Last modified on:	August 25, 2012



if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

precmd() {
	print -rP "$FG[032]%~ $(git_prompt_info) $(which rvm-prompt > /dev/null && rvm-prompt)"
}

# primary prompt
PROMPT='$FG[105]%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

# right prompt
RPROMPT=

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075](branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[214]*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"
