# keychain invocation must stay in zlogin
# if [ -z "$TMUX" ]
# then
#     eval `keychain --quiet --agents ssh --eval id_ed25519 --clear --noask`
# fi

if [ -z $TMUX ]; then
    zstyle :omz:plugins:keychain options --quiet --clear --noask agents ssh identities id_ed25519 
fi

