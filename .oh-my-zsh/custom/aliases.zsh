alias cls='clear'

alias ga='git add'
alias gc='git commit'
alias gs='git status'

alias ze='vim ~/.zshrc'
alias zs='source ~/.zshrc'

if command -v eza >/dev/null 2>&1; then
    alias ls='eza -lahH'
fi

if command -v bat >/dev/null 2>&1; then
    alias cat='bat'
    alias unbat='alias cat="cat"'
    alias rebat='alias cat="bat"'
fi

alias finder='open .'
