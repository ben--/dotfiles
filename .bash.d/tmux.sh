alias tm='tmux -2 attach || tmux -2'

tm-ssh()
{
    eval $(tmux show-env | sed -n -e 's/SSH_.*/export "&"/p')
}
