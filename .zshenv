export PATH="${HOME}/bin:${HOME}/.local/bin:${PATH}"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

if [[ $(uname -s) == "Darwin" ]]; then
    export PATH="/opt/local/bin:${PATH}"
    export PATH="/Library/TeX/Distributions/Programs/texbin:${PATH}"
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
