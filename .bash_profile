# ~/.bash_profile

export EDITOR='vim'

# directories
export GH="$HOME/Documents/apidev/github"
export DF="$GH/dotfiles"
export DB="$HOME/Dropbox"
export CP="$HOME/Copy"

# directory traversal
alias dotfiles='cd $DF'
alias dropbox='cd $DB'
alias github='cd $GH'
alias copy='cd $CP'

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

# shortcuts
alias la='ls -la'
alias duh='du -s -h'
alias dh='duh'
alias d='duh'

# quick edit and dotfile update
alias ebash='vim ~/.bash_profile; source ~/.bash_profile; cp ~/.bash_profile $DF'
alias evim='vim ~/.vimrc; cp ~/.vimrc $DF'

# Shortcuts for editing dropbox files
alias todo='vim $DB/todolist.txt'
alias note='vim $DB/notes.txt'

# Backup Github to Dropbox
alias box_gh='cp -r $GH $DB; chmod -R 777 $DB'

# Backup Dropbox to Copy
alias drop_copy='cp -r $DB $CP'

# Bash prompt
export PS1="\e[0;36m\u:\e[m\e[0;32m\w \e[m"
