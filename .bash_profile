# ~/.bash_profile

# directories
export GH="$HOME/Documents/apidev/github"
export DF="$GH/dotfiles"

# git typos
alias gti='git'
alias gt='git'
alias gi='git'
alias it='git'

# vim typos
alias vmi='vim'
alias vi='vim'
alias vm='vim'
alias im='vim'

# ls typos
alias l='ls'
alias s='ls'
alias sl='ls'

# ls shortcuts
alias la='ls -la'

# quick edit and dotfile update
alias ebash='vim ~/.bash_profile; source ~/.bash_profile; cp ~/.bash_profile $DF'
alias evim='vim ~/.vimrc; cp ~/.vimrc $DF'
