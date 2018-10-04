# Personal
export SHELL="/usr/bin/zsh"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/keyring/ssh"
export ELECTRON_TRASH="gio"
export PATH="$PATH:/usr/local/bin:$HOME/bin"
export ZSH="/home/daniel/.oh-my-zsh"

# Busbud - Base
export BUSBUD="/home/daniel/busbud"
export GOPATH="$HOME/go"
export PATH="$BUSBUD/integrations/_tools/bbint:$PATH"
export PATH="$BUSBUD/integrations/_tools/gisterator:$PATH"
export PATH="$BUSBUD/integrations/_tools/cli-bus-layout:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="/opt/google-cloud-sdk/bin:$PATH"

source $ZDOTDIR/.zshenv.secret
