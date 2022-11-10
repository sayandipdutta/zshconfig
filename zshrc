# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# Set system variables (EXPORT)s
source ~/.config/zsh/custom/exports.zshrc 

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# Change autosuggest highlight style
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#0000ff,bg=cyan,underline"

plugins=(
  autojump
  docker
  git
  fzf
  python
  vi-mode
  zsh-syntax-highlighting
  zsh-autosuggestions
  tmux
  # viper-env
)

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOQUIT=false
ZSH_TMUX_DEFAULT_SESSION_NAME="sayan"
ZSH_TMUX_UNICODE=true

# source ~/.profile
source $ZSH/oh-my-zsh.sh
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

VI_MODE_SET_CURSOR=false

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Other files to source are ~/.zshenv ~/.zprofile ~/.zlogin

# Alias -> Configuration for different alias
source $HOME/.config/zsh/custom/alias.zshrc
source $HOME/.config/zsh/custom/functions.zshrc
source $HOME/.config/zsh/custom/keymaps.zshrc
source $HOME/.config/zsh/custom/shortcuts.zshrc
# Local settings
source $HOME/.config/zsh/custom/.local_env.zshrc
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/share/autojump/autojump.sh
