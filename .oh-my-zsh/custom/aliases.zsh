alias cls='clear'

alias cdd='cd ~/Projects/dotfiles/'
alias cdp='cd ~/Projects/'

alias ga='git add'
alias gc='git commit'
alias gs='git status'

alias ze='vim ~/.zshrc'
alias ae='vim ~/.oh-my-zsh/custom/aliases.zsh'
alias zs='source ~/.zshrc'
alias ve='vim ~/.vimrc'

alias venv='source .venv/bin/activate'
alias drs='python3 manage.py runserver'
alias dmk='python3 manage.py makemigrations'
alias dmg='python3 manage.py migrate'

if command -v eza >/dev/null 2>&1; then
    alias ls='eza -lahH'
fi

if command -v bat >/dev/null 2>&1; then
    alias cat='bat'
    alias unbat='alias cat="cat"'
    alias rebat='alias cat="bat"'
fi

alias finder='open .'
