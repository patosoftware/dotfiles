# Prepend $HOME/.local/bin to PATH if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Prepend $HOME/bin to PATH if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Export ssh-agent socket file path
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR"ssh-agent.sock

# Setup bash
if [ -n "$BASH_VERSION" ]; then
    # Source .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
