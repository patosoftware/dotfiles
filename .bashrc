STARSHIP_BIN=$(which starship)
if [ "$STARSHIP_BIN" != "" ]; then
    eval "$($STARSHIP_BIN init bash)"
fi

# Append to the history file instead of overwrite
shopt -s histappend
# Unlimited command history
HISTSIZE=-1
# Unlimited command history file size
HISTFILESIZE=-1
# Ignore duplicate commands or commands that start with space in bash history
HISTCONTROL=ignoreboth:erasedups

# Update window size after each command if necessary
shopt -s checkwinsize

# Aliases
alias ls="ls --color=auto"
alias ll="ls -lah"
