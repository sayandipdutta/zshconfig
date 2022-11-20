skip_global_compinit=1

. "$HOME/.cargo/env"

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/go/src
export PATH=$PATH:/snap/bin
export PATH=$HOME/.pyenv/versions/:$PATH
export GOPATH=$HOME/github/golang
export PATH=$PATH:$GOPATH/bin
# https://stackoverflow.com/questions/4642822/how-to-make-bashrc-aliases-available-within-a-vim-shell-command#comment32725637_4642855
alias open=wslview
