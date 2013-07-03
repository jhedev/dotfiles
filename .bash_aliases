# Ubuntu apt 
alias aptinstall='sudo apt-get install'
alias aptupgrade='sudo apt-get update && sudo apt-get upgrade'
alias pkgsearch='sudo apt-cache search'
# Mac ports
alias portinstall='sudo port -v install'
alias portupd='sudo port -v selfupdate'
alias portupg='sudo port -v upgrade outdated'

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# ls alias
alias ll='ls -alF'
alias l='ls -F'
alias la='ls -aF | egrep "^\."'
alias lal="ls -alF | gawk '\$9 ~ /^\./'"
