# `~/dotfiles`
Personal configuraton files for my Mac, managed with GNU Stow. Under continuous revision and improvement.

## List of configs
- Emacs
- Homebrew
- Zsh / Oh My Zsh!
- Vim

## Usage
### Install config
```
$ git clone git@github.com:jurdanetac/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ stow emacs homebrew zsh vim
```
### Uninstall config
```
$ cd ~/dotfiles
$ stow -D emacs homebrew zsh vim
```
### Homebrew
[Install config](#install-config) and then run:
```
$ brew bundle --global               # Install packages
$ brew bundle dump --global --force  # Backup packages
```
