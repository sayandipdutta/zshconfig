# This binds Ctrl-O to ranger_cd:
zle -N ranger_cd
bindkey '^o' ranger_cd
# bind '"\C-o":"ranger_cd\C-m"'


# Support vim mode in command line (zle)
# bindkey -v
#
# # Better searching in command mode
# bindkey -M vicmd '?' history-incremental-search-backward
# bindkey -M vicmd '/' history-incremental-search-forward
#
# # Beginning search with arrow keys
# bindkey "^[OA" up-line-or-beginning-search
# bindkey "^[OB" down-line-or-beginning-search
# bindkey -M vicmd "k" up-line-or-beginning-search
# bindkey -M vicmd "j" down-line-or-beginning-search
#
# # Open command in editor
# bindkey -M vicmd "^V" edit-command-line
