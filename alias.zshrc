# Alias (alias)

# alias nvim="nvim --listen /tmp/nvim.pipe"
alias e="nvim --listen $NVIM_REMOTE"

alias ra="ranger"
alias pip="python3 -m pip "
# alias ls="ranger"
#alias vim="nvim"
alias open="wslview"
alias reload='source ~/.zshrc'
# alias e=$EDITOR
alias -s py=python3
alias -s txt=nvim
alias -s rs=nvim
alias code=code-insiders
alias emacs="emacs -nw"

alias le='exa --header --long --git --icons'
# alias open=wslview
alias open=explorer.exe
alias lynx='lynx -lss ~/.config/lynx/lynx.lss'

alias zshconfig="e ~/.config/zsh/*"
# alias ohmyzsh="e ~/.oh-my-zsh"
alias nvimconf="e ~/.config/nvim/{init.lua,lua/user/{whichkey.lua,options.lua,keymaps.lua,lsp/init.lua,telescope.lua}}"
alias tmuxconf="e ~/.tmux.conf"
