# cd
alias cdu='cd ..'
alias cdb='cd -'
alias cdp='cd ~/Projects/'
alias cdd='cd ~/Projects/dotfiles'

# git
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit --amend'
alias gcm='git commit -m'
alias gch='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gi='git init'
alias gl='git log'
alias gt='git log --graph --oneline --all'
alias gp='echo "usage:\ngpl: git pull\ngph: git push\ngphf: git push --force"'
alias gpl='git pull'
alias gph='git push'
alias gphf='git push --force'
alias gu='git reset --soft HEAD~'
alias gr='echo "TODO"'
alias grs='git restore'
alias grss='git restore --staged'
alias gra='git remote add "origin" git@github.com:jurdanetac/'
alias grv='git remote -v'
alias grsu='git remote set-url "origin" git@github.com:jurdanetac/'
alias gs='git status'
alias gsh='git stash'

# clear
alias cls='clear'
alias claer='clear'

# zsh
alias zs='source ~/.zprofile'
alias ze='vi ~/.zprofile'

# misc
alias ls='eza -lahH'
alias cat='bat'
alias finder='open .'

eval "$(/opt/homebrew/bin/brew shellenv)"
