# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

if [[ $(uname -s) == "Darwin" ]]; then
    export EDITOR=emacsclient
    alias emacs="emacs-24.4"
    alias preview="open -a Preview"
    alias spotify="open -a Spotify"
    alias skype="open -a Skype"
    alias email="open -a Mail"
    alias chrome="open -a 'Google Chrome'"
    source $HOME/.zsh_functions_mac
    plugins=(osx macports)
fi

plugins=(zsh-you-should-use ${plugins} git zsh-syntax-highlighting extract gitignore sudo cabal vagrant web-search docker docker-compose docker-machine fasd)

source $ZSH/oh-my-zsh.sh

bindkey -v
bindkey -M viins 'fd' vi-cmd-mode
bindkey -M vicmd 'k' history-beginning-search-backward
bindkey -M vicmd 'j' history-beginning-search-forward
bindkey -M viins '\e\e' sudo-command-line

source $HOME/.zsh_functions
export GOPATH=$HOME/code/go/

export PATH=/usr/local/bin:$PATH

alias e="open -a Emacs"
alias m=make
alias tf=terraform
alias k=kubectl

alias emacsclient=/usr/local/opt/emacs/bin/emacsclient

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


#AWSume alias to source the AWSume script
alias awsume=". \$(pyenv which awsume)"
fpath=(/usr/local/share/zsh/site-functions $fpath)