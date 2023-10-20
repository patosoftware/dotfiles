# Non-interactive shell guard
case $- in
    *i*) ;;
      *) return;;
esac

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
alias ls='ls --color=auto'
alias ll='ls -lah'
