# git
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit --amend'
alias gcm='git commit -m'
alias gch='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gl='git log'
alias gt='git log --graph --oneline --all'
alias gp='echo "usage:\ngpl: git pull\ngph: git push\ngphf: git push --force"'
alias gpl='git pull'
alias gph='git push'
alias gphf='git push --force'
alias gu='git reset --soft HEAD~'
alias gr='git restore'
alias grs='git restore --staged'
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
