# If id_rsa.pub file exists
if [ -f ~/.ssh/id_rsa.pub ]; then
    alias pubkey="more ~/.ssh/id_rsa.pub"
# else if ed25519.pub file exists
elif [ -f ~/.ssh/id_ed25519.pub ]; then
    alias pubkey="more ~/.ssh/id_ed25519.pub"
fi
