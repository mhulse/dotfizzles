#!/bin/bash

# Enable colorized output for `ls` command:
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Default editor:
export EDITOR=nano

# For Homebrew:
export PATH="/usr/local/sbin:$PATH"

# Custom scripts:
[[ -d "$HOME/scripts" ]] && export PATH=$HOME/scripts:$PATH

# Postgres.app
# http://postgresapp.com/
[[ -d "/Applications/Postgres.app" ]] && export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/late‌st/bin

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
# and click “More Info…” to visit the Java Developer Kit download website.
export JRE_HOME=$(/usr/libexec/java_home)
export JAVA_HOME=$(/usr/libexec/java_home)

# Apache Tomcat
# http://tomcat.apache.org/
export CATALINA_HOME='/Applications/tomcat' # Symlinked to latest Tomcat version.

# Check the window size after each command and, if necessary, update the
# values of LINES and COLUMNS:
shopt -s checkwinsize

# Turn on recursive globbing (bash 4.x):
shopt -s globstar

# SDKMAN!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
