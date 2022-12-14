# Alias (alias)

# alias nvim="nvim --listen /tmp/nvim.pipe"
alias e="nvim --listen /tmp/nvim_${RANDOM}.sock"

alias ra="ranger"
alias pip="python3 -m pip "
alias lr="ranger"
# alias vim="nvim"
alias open="wslview"
alias reload='source ~/.zshrc'
# complementary to clip.exe
alias paste.exe="powershell.exe Get-Clipboard | perl -p -e 's/\r\n$/\n/'"
# alias e=$EDITOR
alias -s py=python3
alias -s txt=nvim
alias -s rs=nvim
alias -s md=glow
alias code=code-insiders
alias emacs="emacs -nw"

alias ls='exa'
alias ols='/usr/bin/ls'
# alias open=wslview
alias open=explorer.exe
alias lynx='lynx -lss ~/.config/lynx/lynx.lss'

alias zshconfig="e ~/.config/zsh/**/*"
# alias ohmyzsh="e ~/.oh-my-zsh"
alias nvimconf="e ~/.config/nvim/{init.lua,lua/user/{whichkey.lua,options.lua,keymaps.lua,lsp/init.lua,telescope.lua}}"
alias tmuxconf="e ~/.tmux.conf"
