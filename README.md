# dotfiles

My dotfiles.

```bash
curl -sSL https://raw.github.com/klausmeyer/dotfiles/master/setup.sh | bash
```

## Index

1. zsh
2. vim
3. git

## 1. zsh

The framework oh-my-zsh is used as a boilerplate and i've forked a theme to customize it to me wishes.

Files:

* oh-my-zsh (git submodule)
* zsh/km.zsh-theme
* zshrc
* zshenv

## 2. vim

My vim config is optimized for ruby on rails development, but can be also used as a system-wide default.
I use the Tomorrow Night Theme.

The following plugins are (down-)loaded on the first run of vim:

* vundle (vim package manager)
* nerdtree (filebrowser)
* vim-nerdtree-tabs (open files in tabs from filebrowser)
* vim-ruby (ruby improvements)
* vim-rails (rails improvements)

Files:

* vimrc
* vim/colors/Tomorrow-Night.vim
* vim/colors/Tomorrow-Night-Eighties.vim

## 4. git

Git is configured for my default workflow and I've also created a global ignore list for some files that should be never part of a repository.

* My identity settings (please change, if you use my dotfiles ;-D)
* Enable colors
* Some aliases I use
  * `git st` => `git status`
  * `git co` => `git checkout`
  * `git br` => `git branch`
  * `git ap` => `git add -p`
* Global gitignore file (you will need to change the path)
* Use rebase instead of merge on pull
* Use `tracking` push strategy

Files:

* gitconfig
* gitignore
