# Open specified files in Sublime Text:
# "s ." will open the current directory in Sublime
alias s='open -a "Sublime Text"'

# Color ls:
colorflag="-G"
alias ls="command ls ${colorflag}h"
alias l="ls -lF ${colorflag}" # all files, in long format
alias la="ls -laF ${colorflag}" # all files inc dotfiles, in long format
alias lsd='ls -lF ${colorflag} | grep "^d"' # only directories
alias ll='ls -alFh ${colorflag}'

# Quicker navigation:
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Enable aliases to be sudo’ed:
alias sudo='sudo '

# Colored up cat!
# You must install Pygments first - "sudo easy_install Pygments".
alias c='pygmentize -O style=monokai -f console256 -g'

# Git
# You must install Git first - ""
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m' # Requires you to type a commit message.
alias gp='git push'

# Color grep:
alias grep='grep --color=auto'
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

#alias http_headers='curl -svo /dev/null'

alias trim_whitespace="sed -i 's/[ \t]*$//' "

alias rcopy='rsync -az --stats --progress --delete'

alias ssh='ssh -A'

alias dt='date "+%F %T"'

# Make these commands ask before clobbering a file.
# Use -f to override.
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

alias reload='source ~/.bash_profile' # Reloads session.

alias rm=safe_rm # See .bash_functions for details.

# Quickly search for file:
alias qfind="find . -name "

# Public facing ip address:
alias myip='curl ip.appspot.com'

# Your local ip address:
alias localip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

# Show all open TCP/IP sockets:
alias netCons='lsof -i'

# Flush out the DNS Cache:
alias flushDNS='dscacheutil -flushcache'

# Display open sockets:
alias lsock='sudo /usr/sbin/lsof -i -P'

# Display only open UDP sockets:
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'

# Display only open TCP sockets:
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'

# Get info on connections for en0:
alias ipInfo0='ipconfig getpacket en0'

# Get info on connections for en1:
alias ipInfo1='ipconfig getpacket en1'

# All listening connections:
alias openPorts='sudo lsof -i | grep LISTEN'

# All ipfw rules inc/ blocked IPs:
alias showBlocked='sudo ipfw list'

# Show hidden files in Finder:
alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
# Hide hidden files in Finder:
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'

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

# XAMPP shortcuts:
alias xampp='sudo /Applications/XAMPP/xamppfiles/xampp restart'
alias xampp_stop='sudo /Applications/XAMPP/xamppfiles/xampp stop'
alias xampp_start='sudo /Applications/XAMPP/xamppfiles/xampp start'
