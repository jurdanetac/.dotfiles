alias cls='clear'

alias cdd='cd ~/Projects/dotfiles'

alias ga='git add'
alias gc='git commit'
alias gs='git status'

alias ze='vim ~/.zshrc'
alias ae='vim ~/.oh-my-zsh/custom/aliases.zsh'
alias zs='source ~/.zshrc'
alias ve='vim ~/.vimrc'

if command -v eza >/dev/null 2>&1; then
    alias ls='eza -lahH'
fi

if command -v bat >/dev/null 2>&1; then
    alias cat='bat'
    alias unbat='alias cat="cat"'
    alias rebat='alias cat="bat"'
fi

alias finder='open .'
