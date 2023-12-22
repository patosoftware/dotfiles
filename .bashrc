HISTCONTROL=ignoreboth:erasedups

alias ls="ls --color=auto"
alias ll="ls -lah"

STARSHIP_BIN=/usr/local/bin/starship
if [ -f $STARSHIP_BIN ]; then
    eval "$($STARSHIP_BIN init bash)"
fi
