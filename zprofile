eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# emulate sh -c 'source ~/.profile'
if [ -z $TMUX ]
then
    source $HOME/github/shell/adm.sh
fi
