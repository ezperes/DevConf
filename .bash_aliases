# This file is called by .bash_profile to supply custom aliases for my prompt development terminal

# -G colorizes; -h makes file size human readable; -F throws a / after a directory, * after exeutable and @ after a symnlink
alias ls='ls -GFh'
alias la='ls -la'
alias ll='ls -l'

# Enables command line colors
export CLICOLOR=1

# Sublime Text
# alias sub='/Applications/"Sublime Text.app"/Contents/MacOS/"Sublime Text"'

# Aliases to edit key profile files
alias bash_profile='vim ~/.bash_profile'
alias bash_aliases='vim ~/.bash_aliases'

# Aliases to access key directories
alias dcns='cd /DCNS'

# Aliases for git
alias gs='git status'
