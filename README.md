# `~/dotfiles`
Personal configuraton files for my Mac, managed with GNU Stow. Under continuous revision and improvement.

![macOS](https://img.shields.io/badge/macOS-000000?style=for-the-badge&logo=apple&logoColor=white)
![GNU Stow](https://img.shields.io/badge/GNU_Stow-333333?style=for-the-badge&logo=gnu&logoColor=white)
![GNU Emacs](https://img.shields.io/badge/Emacs-7F5AB6?style=for-the-badge&logo=gnu-emacs&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)
![Homebrew](https://img.shields.io/badge/Homebrew-FBB040?style=for-the-badge&logo=homebrew&logoColor=black)
![Zsh](https://img.shields.io/badge/Zsh-F15A24?style=for-the-badge&logo=zsh&logoColor=white)
![Vim](https://img.shields.io/badge/Vim-019733?style=for-the-badge&logo=vim&logoColor=white)

## List of configs
- Apple Shortcuts (macOS/iOS)
- Emacs
- Git
- Homebrew
- Zsh / Oh My Zsh!
- Vim

## Usage
### Install config
```
$ git clone git@github.com:jurdanetac/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ stow emacs git homebrew zsh vim
```
### Uninstall config
```
$ cd ~/dotfiles
$ stow -D emacs git homebrew zsh vim
```
### Homebrew
[Install config](#install-config) and then run:
```
$ brew bundle --global                # Install packages
$ brew bundle dump --global --force   # Backup packages
```
