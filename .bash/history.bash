#!/bin/bash

# http://unix.stackexchange.com/questions/1288/preserve-bash-history-in-multiple-terminal-windows
# http://superuser.com/questions/137438/how-to-unlimited-bash-shell-history
# https://www.kernel.org/doc/man-pages/online/pages/man3/strftime.3.html
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
export HISTTIMEFORMAT="%a %h %d - %r "   # timestamps
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# NOTE: The below bindings can be found in the `/.inputrc` file.
# If you don’t feel like utilizing both files for your particular setup, but
# want fuzzy history search goodness, then just copy and paste the code in this
# file (uncomment the below lines) into your chosen `profile` and you’ll be set.
#
# bind '"\e[A": history-search-backward'
# bind '"\e[B": history-search-forward'
