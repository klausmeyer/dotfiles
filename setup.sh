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

create_link zsh
create_link oh-my-zsh
create_link zshrc
create_link zshenv
create_link vimrc
create_link gitconfig
create_link gitignore
create_link tmux
create_link tmux.conf

if [[ ! -x "$HOME/.oh-my-zsh/custom/themes" ]]
then
  mkdir "$HOME/.oh-my-zsh/custom/themes"
fi

ln -s "$HOME/.zsh/km.zsh-theme" "$HOME/.oh-my-zsh/custom/themes/km.zsh-theme"

mkdir -p "$HOME/.vim/bundle"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

exit 0
