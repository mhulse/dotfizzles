#!/bin/bash

# Enable forwarding of the authentication agent connection:
alias ssh="ssh -A"

# Color grep:
alias grep="grep --color=auto"

# Show where you copy:
alias cp="cp -v"

# Use unit suffixes:
alias ls="command ls -Gh"

# All files, in long format:
alias l="ls -lFG"

# Create intermediate directories as required:
alias mkdir="mkdir -p"

# All files, including dotfiles, in long format:
alias la="ls -laFG"

# Only show directories:
alias lsd='ls -lFG | grep "^d"'

# Only show dot files:
alias lsh="ls -ld .??*"

# Hides `.` and `..`, shows hidden items and ending slashes for
# directories, and sorts in reverse chronological order:
alias ll="ls -lAtrFhG"

# Sort files by size:
alias sortbysize="ls -s | sort -n"

# Quicker navigation:
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Grepping for pesky unicode characters:
alias unigrep='grep -P "[^\x00-\x7F]"'

# Show beginning and end of provided file (`skim foo.txt`):
alias skim="(head -5; tail -5) <"

# Trim whitespace (`tws file.txt`):
alias tws="sed -i 's/[ \t]*$//' "

# Copy `src` to `dest` using `rcopy src dest` and delete files no longer
# present in the source:
alias rcopy="rsync -az --stats --progress --delete"

# Print date/time (e.g. `2019-10-03 11:32:27`)
alias dt='date "+%F %T"'

# Quickly search for file:
alias qfind="find . -name "

# Public facing ip address:
alias myip="curl ip.appspot.com"

# Your local ip address:
alias localip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

# Show all open TCP/IP sockets:
alias netCons="lsof -i"

# Flush out the DNS cache:
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

# Weather from current location:
alias weather="curl -s 'http://rss.accuweather.com/rss/liveweather_rss.asp?metric=1&locCode=en|us|brooklyn-ny|11215' | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'"

# Upper/lower case input string:
alias tolower="pbpaste | tr "[:upper:]" "[:lower:]" | pbcopy"
alias toupper="pbpaste | tr "[:lower:]" "[:upper:]" | pbcopy"

# Restart dock:
alias killdock="killall -KILL Dock"

# Opens up the IOS Simulator without launching xcode:
alias iossimulator="(cd /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/ && open -a iPhone\ Simulator.app)"

# Quick Look!
# $ cd /Library/Desktop\ Pictures
# $ qlf "Jaguar Aqua Graphite.jpg"
alias qlf='qlmanage -p "$@" >& /dev/null'

# Remove Duplicates from the “Open With” Right-Click Menu in Mac OS X:
alias killdups='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"'
