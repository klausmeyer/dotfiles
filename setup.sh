#!/usr/bin/env bash

if [[ -x "$HOME/.dotfiles" ]]
then
  echo "~/.dotfiles already exists, abort!"
  exit 1
fi

if [[ "x$(whereis git)" == "x" ]]
then
  echo "This script needs git, please install first!"
  exit 2
fi

git clone --recurse https://github.com/klausmeyer/dotfiles.git "$HOME/.dotfiles"

function create_link {
  element=$1
  if [[ -e "$HOME/.$element" ]]
  then
    echo "Skip: $element"
  else
    echo "Link: $element"
    ln -s "$HOME/.dotfiles/$element" "$HOME/.$element"
  fi
}

mkdir -l ~/.atom

create_link zsh
create_link oh-my-zsh
create_link zshrc
create_link zshenv
create_link vimrc
create_link vim
create_link gitconfig
create_link gitignore
create_link tmux.conf
create_link atom/config.cson

if [[ ! -x "$HOME/.oh-my-zsh/custom/themes" ]]
then
  mkdir "$HOME/.oh-my-zsh/custom/themes"
fi
ln -s "$HOME/.zsh/km.zsh-theme" "$HOME/.oh-my-zsh/custom/themes/km.zsh-theme"

vim

exit 0
