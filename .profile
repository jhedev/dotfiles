#Add Path
export PATH=/opt/local/bin:/opt/local/sbin:/usr/bin:/usr/sbin:/sbin:/opt/mlstate/bin:$PATH

export HISTCONTROL=ignoredups:ignorespace
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# load .bashrc
if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
