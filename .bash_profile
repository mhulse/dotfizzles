########################################################################
# FUNCTIONS:
########################################################################

if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi

########################################################################
# ALIASES
########################################################################

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

########################################################################
# COLORS
########################################################################

# Modified version of @gf3’s Sexy Bash Prompt
# (https://github.com/gf3/dotfiles)
if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
  export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
  export TERM=xterm-256color
fi

if tput setaf 1 &> /dev/null; then
  tput sgr0
  if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
    BLACK=$(tput setaf 190)
    MAGENTA=$(tput setaf 9)
    ORANGE=$(tput setaf 172)
    GREEN=$(tput setaf 190)
    PURPLE=$(tput setaf 141)
    WHITE=$(tput setaf 0)
  else
    BLACK=$(tput setaf 190)
    MAGENTA=$(tput setaf 5)
    ORANGE=$(tput setaf 4)
    GREEN=$(tput setaf 2)
    PURPLE=$(tput setaf 1)
    WHITE=$(tput setaf 7)
  fi
  BOLD=$(tput bold)
  RESET=$(tput sgr0)
else
  BLACK="\033[01;30m"
  MAGENTA="\033[1;31m"
  ORANGE="\033[1;33m"
  GREEN="\033[1;32m"
  PURPLE="\033[1;35m"
  WHITE="\033[1;37m"
  BOLD=""
  RESET="\033[m"
fi

export BLACK
export MAGENTA
export ORANGE
export GREEN
export PURPLE
export WHITE
export BOLD
export RESET

# Change this symbol to something sweet.
# http://en.wikipedia.org/wiki/Unicode_symbols
symbol="⚡  "

export PS1="\[${BOLD}${MAGENTA}\]\u \[$WHITE\]in \[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]\n$symbol\[$RESET\]"
export PS2="\[$ORANGE\]→ \[$RESET\]"

# Always enable GREP colors:
export GREP_OPTIONS='--color=auto'

# My old prompt color setup:
# http://noahfrederick.com/blog/2011/lion-terminal-theme-peppermint/
# http://osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/
# http://stackoverflow.com/questions/1550288/mac-os-x-terminal-colors
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export PS1="\[\e[0;31m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ "
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad
#alias ls='ls -GFh'

########################################################################
# AUTOCOMPLETERS
########################################################################

# Autocomplete for homebrew:
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
  source `brew --prefix`/etc/bash_completion
fi

# Autocomplete for node:
if [[ -e ~/.node-completion ]]; then
  shopt -s progcomp
  for f in $(command ls ~/.node-completion); do
    f="$HOME/.node-completion/$f"
    test -f "$f" && . "$f"
  done
fi

# Autocomplete for npm:
if [[ `which npm` ]]; then
  eval "$(npm completion 2>/dev/null)"
fi

# Autocomplete for pip:
if [[ `which pip` ]]; then
  eval "`pip completion --bash`"
fi

# /etc/profile.d/complete-hosts.sh
# Autocomplete Hostnames for SSH etc.
# By Jean-Sebastien Morisset (http://surniaulula.com/).
_complete_hosts () {
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  host_list=`{
    for c in /etc/ssh_config /etc/ssh/ssh_config ~/.ssh/config
      do [ -r $c ] && sed -n -e 's/^Host[[:space:]]//p' -e 's/^[[:space:]]*HostName[[:space:]]//p' $c
    done
    for k in /etc/ssh_known_hosts /etc/ssh/ssh_known_hosts ~/.ssh/known_hosts
      do [ -r $k ] && egrep -v '^[#\[]' $k|cut -f 1 -d ' '|sed -e 's/[,:].*//g'
    done
    sed -n -e 's/^[0-9][0-9\.]*//p' /etc/hosts; }|tr ' ' '\n'|grep -v '*'`
  COMPREPLY=( $(compgen -W "${host_list}" -- $cur))
  return 0
}
complete -F _complete_hosts ssh
complete -F _complete_hosts host

# Autocomplete sudo and man-pages:
complete -cf sudo man

########################################################################
# HISTORY
########################################################################

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

# Map up & down arrow keys to do fuzzy history search:
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

########################################################################
# PYTHON
########################################################################

# https://github.com/registerguard/registerguard.github.com/wiki/Install-python,-virtualenv,-virtualenvwrapper-in-a-brew-environment
# Python virtual environments:
export WORKON_HOME=$HOME/.virtualenvs
#export WORKON_HOME=/tmp/foo/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

########################################################################
# RUBY
########################################################################

# https://github.com/wayneeseguin/rvm/issues/2205
#export PATH=$PATH:/mhulse.rvm/bin # Add RVM to PATH for scripting

# Ruby Version Manager:
# http://www.interworks.com/blogs/ckaukis/2013/03/05/installing-ruby-200-rvm-and-homebrew-mac-os-x-108-mountain-lion
# http://portertech.ca/2010/03/26/homebrew--rvm--awesome/
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*.

########################################################################
# GOOGLE
########################################################################

# Google Cloud Storage:
export PATH=${PATH}:$HOME/gsutil # https://developers.google.com/storage/docs/gsutil_install
alias gsutil-hulse=BOTO_CONFIG=$HOME/.boto-hulse\ gsutil

########################################################################
# MISCELLANEOUS
########################################################################

# Only show the current directory's name in the tab
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

# Init z!
# https://github.com/rupa/z
. ~/z.sh

# Check the window size after each command and, if necessary, update the
# values of LINES and COLUMNS:
shopt -s checkwinsize

# Disables shadow on screenshots:
defaults write com.apple.screencapture disable-shadow -bool true
