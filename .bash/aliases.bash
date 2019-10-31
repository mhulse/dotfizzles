#!/bin/bash

# Quicker navigation:
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Removes a bunch of crap from your finder:
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete && find . -name 'Thumbs.db' -type f -ls -delete"

# Show where you copy:
alias cp="cp -v"

# Print date/time (e.g. `2019-10-03 11:32:27`)
alias dt='date "+%F %T"'

# Flush out the DNS cache:
alias flushdns="dscacheutil -flushcache"

# Color grep:
alias grep="grep --color=auto"

# Opens up the IOS Simulator without launching xcode:
alias iossimulator="(cd /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/ && open -a iPhone\ Simulator.app)"

# Get info on connections for en0:
alias ipinfo0="ipconfig getpacket en0"

# Get info on connections for en1:
alias ipinfo1="ipconfig getpacket en1"

# Restart dock:
alias killdock="killall -KILL Dock"

# Remove “duplicates” from the “Open With” Right-Click Menu in Mac OS X:
alias killdups='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"'

# All files, in long format:
alias l="ls -lFG"

# All files, including dotfiles, in long format:
alias la="ls -laFG"

# Hides `.` and `..`, shows hidden items and ending slashes for
# directories, and sorts in reverse chronological order:
alias ll="ls -lAtrFhG"

# Your local ip address:
alias localip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

# Use unit suffixes:
alias ls="command ls -Gh"

# Only show directories:
alias lsd='ls -lFG | grep "^d"'

# Only show dot files:
alias lsh="ls -ld .??*"

# Display open sockets:
alias lsock="sudo /usr/sbin/lsof -i -P"

# Display only open TCP sockets:
alias lsockt="sudo /usr/sbin/lsof -nP | grep TCP"

# Display only open UDP sockets:
alias lsocku="sudo /usr/sbin/lsof -nP | grep UDP"

# Sort files by size:
alias lss="ls -s | sort -n"

# Create intermediate directories as required:
alias mkdir="mkdir -p"

# Public facing ip address:
alias myip="curl ip.appspot.com"

# Show all open TCP/IP sockets:
alias netcons="lsof -i"

# All listening connections:
alias openports="sudo lsof -i | grep LISTEN"

# Copy the PWD to the Clipboard
alias pwdc="pwd | tr -d '\n' | pbcopy"

# Quickly search for file:
alias qfind="find . -name "

# Quick Look!
# $ cd /Library/Desktop\ Pictures
# $ qlf "Jaguar Aqua Graphite.jpg"
alias qlf='qlmanage -p "$@" >& /dev/null'

# Copy `src` to `dest` using `rcopy src dest` and delete files no longer
# present in the source:
alias rcopy="rsync -az --stats --progress --delete"

# All ipfw rules inc/ blocked IPs:
alias showblocked="sudo ipfw list"

# Show beginning and end of provided file (`skim foo.txt`):
alias skim="(head -5; tail -5) <"

# Enable forwarding of the authentication agent connection:
alias ssh="ssh -A"

# Upper/lower case input string:
alias tolower="pbpaste | tr "[:upper:]" "[:lower:]" | pbcopy"
alias toupper="pbpaste | tr "[:lower:]" "[:upper:]" | pbcopy"

# Trim whitespace (`tws file.txt`):
alias tws="sed -i 's/[ \t]*$//' "

# Grepping for pesky unicode characters:
alias unigrep='grep -P "[^\x00-\x7F]"'

# Weather from current location:
alias weather="curl -s 'http://rss.accuweather.com/rss/liveweather_rss.asp?metric=1&locCode=en|us|brooklyn-ny|11215' | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'"
