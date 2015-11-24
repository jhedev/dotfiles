export PATH="${HOME}/.local/bin:${PATH}"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

if [[ $(uname -s) == "Darwin" ]]; then
    export PATH="/opt/local/bin:${PATH}"
fi
