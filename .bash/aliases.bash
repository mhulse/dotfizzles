#!/bin/bash

# Color ls:
colorflag="-G"
alias ls="command ls ${colorflag}h"
alias l="ls -lF ${colorflag}" # all files, in long format
alias la="ls -laF ${colorflag}" # all files inc dotfiles, in long format
alias lsd='ls -lF ${colorflag} | grep "^d"' # only directories
alias ll="ls -alFh ${colorflag}"

# Quicker navigation:
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Color grep:
alias grep="grep --color=auto"

# Grepping for pesky unicode characters:
alias unigrep='grep -P "[^\x00-\x7F]"'

alias skim="(head -5; tail -5) <"

# Sort files by size:
alias sortbysize="ls -s | sort -n"

# Say something with speech synthesis:
alias say="espeak"

# Show where you copy:
alias cp="cp -v"

# Make it no matter what:
alias mkdir="mkdir -p"

alias trim_whitespace="sed -i 's/[ \t]*$//' "

alias rcopy="rsync -az --stats --progress --delete"

alias ssh="ssh -A"

alias dt='date "+%F %T"'

# Quickly search for file:
alias qfind="find . -name "

# Public facing ip address:
alias myip="curl ip.appspot.com"

# Your local ip address:
alias localip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

# Show all open TCP/IP sockets:
alias netCons="lsof -i"

# Flush out the DNS Cache:
alias flushDNS="dscacheutil -flushcache"

# Display open sockets:
alias lsock="sudo /usr/sbin/lsof -i -P"

# Display only open UDP sockets:
alias lsockU="sudo /usr/sbin/lsof -nP | grep UDP"

# Display only open TCP sockets:
alias lsockT="sudo /usr/sbin/lsof -nP | grep TCP"

# Get info on connections for en0:
alias ipInfo0="ipconfig getpacket en0"

# Get info on connections for en1:
alias ipInfo1="ipconfig getpacket en1"

# All listening connections:
alias openPorts="sudo lsof -i | grep LISTEN"

# All ipfw rules inc/ blocked IPs:
alias showBlocked="sudo ipfw list"

# Removes a bunch of crap from your finder:
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete && find . -name 'Thumbs.db' -type f -ls -delete"

# Weather from my current location:
alias weather="curl -s 'http://rss.accuweather.com/rss/liveweather_rss.asp?metric=1&locCode=en|us|brooklyn-ny|11215' | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'"

alias tolowercase="pbpaste | tr "[:upper:]" "[:lower:]" | pbcopy"
alias touppercase="pbpaste | tr "[:lower:]" "[:upper:]" | pbcopy"

# Only show dot files:
alias lsh="ls -ld .??*"

alias restartdock="killall -KILL Dock"

# Opens up the IOS Simulator without launching xcode:
alias iossimulator="(cd /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/ && open -a iPhone\ Simulator.app)"

# Show hidden files in Finder:
alias show="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
# Hide hidden files in Finder:
alias hide="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"

# Default Python:
alias python=python3
# Default pyvenv:
alias pyvenv=pyvenv-3
# Default pip:
alias pip=pip3

# XAMPP shortcuts:
alias xampp="sudo /Applications/XAMPP/xamppfiles/xampp restart"
alias xampp_stop="sudo /Applications/XAMPP/xamppfiles/xampp stop"
alias xampp_start="sudo /Applications/XAMPP/xamppfiles/xampp start"

# Apache Tomcat start:
# $ tomcat
# $ tomcat start
# Tomcat stop:
# $ tomcat stop
alias tomcat=catalina

# List Atom packages:
alias atompkgs="apm list --installed --bare"

# Start blender from command line, used for debugging:
alias blender="/Applications/blender.app/Contents/MacOS/blender"

# Quick Look!
# $ cd /Library/Desktop\ Pictures
# $ qlf "Jaguar Aqua Graphite.jpg"
alias qlf='qlmanage -p "$@" >& /dev/null'
