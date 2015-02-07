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
    EDITOR=/Applications/MacVim/mvim
    alias emacs="emacs-24.4"
    alias preview="open -a Preview"
    alias spotify="open -a Spotify"
    alias skype="open -a Skype"
    alias email="open -a Mail"
    alias chrome="open -a 'Google Chrome'"
    source $HOME/.zsh_functions_mac
    plugins=(osx macports)
    PATH=$HOME/Library/Haskell/bin:$PATH
else
    EDITOR=gvim
    plugins=(archlinux)
fi
plugins=(${plugins} git zsh-syntax-highlighting extract gitignore sudo cabal vagrant web-search docker)

alias e=$EDITOR

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=.cabal-sandbox/bin:$HOME/.cabal/bin:$HOME/bin:/opt/local/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
if [[ $(uname -s) == "Linux" ]]; then
    alias open=xdg-open
fi

bindkey -v
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M vicmd 'k' history-beginning-search-backward
bindkey -M vicmd 'j' history-beginning-search-forward
bindkey -M viins '\e\e' sudo-command-line

source $HOME/.zsh_functions
source $HOME/.keys
export GOPATH=$HOME/code/go/
export NIX_PATH=$HOME/code/nix/nixpkgs:nixpkgs=$HOME/code/nix/nixpkgs
