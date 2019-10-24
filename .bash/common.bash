#!/bin/bash

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Default editor:
export EDITOR=nano

# Required scripts:
[[ -d "$HOME/.scripts" ]] && export PATH=$HOME/.scripts:$PATH

# Custom scripts:
[[ -d "$HOME/scripts" ]] && export PATH=$HOME/scripts:$PATH

# Postgres.app
# http://postgresapp.com/
# http://stackoverflow.com/a/24684701/922323
export PATH=${PATH}:/Applications/Postgres.app/Contents/Versions/9.3/bin

# Ruby: rbenv
if [ -d "$HOME/.rbenv/bin" ] ; then
  export PATH="$HOME/.rbenv/bin":$PATH
  eval "$(rbenv init -)"
fi

# Ruby: rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Java
# You may need to run:
# $ java --request
# and click “More Info…” to visit the Java Developer Kit download website.
export JRE_HOME=$(/usr/libexec/java_home)
export JAVA_HOME=$(/usr/libexec/java_home)

# Apache Tomcat
# http://tomcat.apache.org/
export CATALINA_HOME='/Applications/tomcat' # Symlinked to latest Tomcat version.

# For Homebrew:
export PATH="/usr/local/sbin:$PATH"

# Check the window size after each command and, if necessary, update the
# values of LINES and COLUMNS:
shopt -s checkwinsize

# Turn on recursive globbing (bash 4.x):
shopt -s globstar
