# ~/.bash_profile

export EDITOR='vim'
export PAGER="less"

# history
export HISTCONTROL=ignoredups
export HISTIGNORE="ls:ls *:cd:cd *:pwd"

# directories
export GH="$HOME/Documents/apidev/github"
export DF="$GH/dotfiles"
export DB="$HOME/Dropbox"
export CP="$HOME/Copy"
export JS="$HOME/.js"

# directory traversal
alias dotfiles='cd $DF'
alias dropbox='cd $DB'
alias github='cd $GH'
alias copy='cd $CP'
alias js='cd $JS'

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
alias t='top -o cpu'

# quick edit and dotfile update
alias ebash='vim ~/.bash_profile; source ~/.bash_profile; cp ~/.bash_profile $DF'
alias evim='vim ~/.vimrc; cp ~/.vimrc $DF'

# Shortcuts for editing dropbox files
alias todo='vim $DB/todolist.txt'
alias note='vim $DB/notes.txt'

# Backup Github to Dropbox
alias box_gh='cp -r $GH $DB; chmod -R 777 $DB'

alias box_js='cp -r $JS $DB'

# Backup Dropbox to Copy
alias drop_copy='cp -r $DB $CP'

# Put all backup operations in this alias
alias backup='box_js; box_gh; drop_copy'

# Publish to github pages (from master)
alias ghpage='git checkout gh-pages; git rebase master; git pull; git push; git checkout master'

# Start interactive rebase of last two commits
alias squash='git rebase -i HEAD~2'

function is_git_dirty {
  git diff --quiet HEAD &>/dev/null
  ESTATUS=$?
  if [[ $ESTATUS == 1 ]]; then
    echo "⚡ " 
  elif [[ $ESTATUS == 129 ]]; then
    echo " "
  else
    echo "👌 "
  fi
}

# Bash prompt
export PS1="\e[0;36m\u:\e[m\e[0;32m\w\e[m\$(is_git_dirty)"

defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool FALSE
