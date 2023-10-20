# Prepend $HOME/.local/bin to PATH if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Prepend $HOME/bin to PATH if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Setup homebrew
HOMEBREW_BIN="/home/linuxbrew/.linuxbrew/bin/brew"
if [ "$HOMEBREW_BIN" != "" ]; then
    export HOMEBREW_NO_ENV_HINTS=1
    eval "$($HOMEBREW_BIN shellenv)"
fi

# Setup bash
if [ -n "$BASH_VERSION" ]; then
    # Source .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
