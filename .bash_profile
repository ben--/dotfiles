. ~/.bash.d/aliases.sh
. ~/.bash.d/docker.sh
. ~/.bash.d/git.sh
. ~/.bash.d/tmux.sh

PS1='\[\e[1;34m\]\W\[\e[0;32m\]\$\[\e[m\] '

title()
{
    echo -ne "\\033]0;$*\\007"
}

eval "$(thefuck --alias f)"

########################################################################
# External config

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH="$HOME/.poetry/bin:$PATH"
. ~/.bash_completion.d/poetry.bash-completion
