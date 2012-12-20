# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#Set-Up coloring in the Terminal
force_color_prompt=yes

# User specific aliases and functions
alias cl='clear'
alias gs='git status'
alias ll='ls -l -h --color=auto'
alias gd='git diff'
alias ec='emacs -nw'
alias e='emacs'
alias avo='. ~/avo.sh'
alias run='python manage.py runserver'
alias db='pythin manage.py dbshell'
alias tar='tar czvf'    #I can never remember the arguments
alias untar='tar xzvf'
alias du='du -kh'       # Makes a more readable output.
alias df='df -kTh'

function extract()      # Handy Extract Program.
{
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xvjf $1     ;;
             *.tar.gz)    tar xvzf $1     ;;
             *.bz2)       bunzip2 $1      ;;
             *.rar)       unrar x $1      ;;
             *.gz)        gunzip $1       ;;
             *.tar)       tar xvf $1      ;;
             *.tbz2)      tar xvjf $1     ;;
             *.tgz)       tar xvzf $1     ;;
             *.zip)       unzip $1        ;;
             *.Z)         uncompress $1   ;;
             *.7z)        7z x $1         ;;
             *)           echo "'$1' cannot be extracted via >extract<" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}
