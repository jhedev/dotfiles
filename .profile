#Add Path
export PATH=/opt/local/bin:/opt/local/sbin:/usr/bin:/usr/sbin:/sbin:/opt/mlstate/bin:$PATH

export HISTCONTROL=ignoredups:ignorespace
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# load .bashrc
if [ -f "$HOME/.bashrc" ]; then 
    source "$HOME/.bashrc"
fi
if [ -e /Users/joel/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/joel/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
