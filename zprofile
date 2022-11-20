eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# emulate sh -c 'source ~/.profile'

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path --no-rehash)"

if [ -z $TMUX ]
then
    source $HOME/github/shell/adm.sh
fi
