# Quick and dirty calculator. Goes right to ruby and lets you print out
# the results of math operations, or other ruby expressions.
function calc(){ ruby -e "puts $*"; }

function myip() {
  # GNU vs BSD hostname:
  (hostname -i &> /dev/null)
  if [ $? -eq 0 ]; then
    echo `hostname -i`
  else
    # Default to eth0 IP, for MAC:
    echo `ipconfig getifaddr en0`
  fi;
}

# Google the parameter:
function google() {
  links http://google.com/search?q=$(echo "$@" | sed s/\ /+/g)
}

# Awesome! cd AND la. (I never use 'cd' anymore):
function cl() { cd "$@" && la; }

# Repeat a command N times.
# You can do something like: "repeat 3 echo 'hi'"
function repeat() {
  local i max
  max=$1; shift;
  for ((i=1; i <= max ; i++)); do
    eval "$@";
  done
}

function myip() {
 # GNU vs BSD hostname
 (hostname -i &> /dev/null)
  if [ $? -eq 0 ]; then
    echo `hostname -i`
  else
    # default to eth0 IP, for MAC
    echo `ipconfig getifaddr en0`
  fi;
}

# Git branch details:
function parse_git_dirty() {
  [[ $(git status 2> /dev/null | tail -n1) != *"working directory clean"* ]] && echo "*"
}
function parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

# Find symlinks recursive:
function findlinks() { find $@ -type l -exec ls -l {} \;;}

# Extract based upon file ext:
function ex() {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xvjf $1 ;;
      *.tar.gz) tar xvzf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) unrar x $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xvf $1 ;;
      *.tbz2) tar xvjf $1 ;;
      *.tgz) tar xvzf $1 ;;
      *.zip) unzip $1 ;;
      *.Z) uncompress $1 ;;
      *.7z) 7z x $1 ;;
      *) echo "'$1' cannot be extracted via >extract<" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Compress with tar + bzip2:
function bz2() {
  tar cvpjf $1.tar.bz2 $1
}

function man() {
  /usr/bin/man $@ || (help $@ 2> /dev/null && help $@ | less)
}

# Use DNS to query wikipedia (wiki QUERY):
function wiki() {
  dig +short txt $1.wp.dg.cx;
}

# Remove line n from a file (removeline N FILE):
function removeline() {
  sed -i $1d $2;
}

# Get the country of a specific IP address using ip2location (ip2loc IP):
function ip2loc() {
  wget -qO - www.ip2location.com/$1 | grep "<span id=\"dgLookup__ctl2_lblICountry\">" | sed 's/<[^>]*>//g; s/^[\t]*//; s/&quot;/"/g; s/</</g; s/>/>/g; s/&amp;/\&/g';
}

# Find file under the current directory:
function ff() {
  /usr/bin/find . -name "$@" ;
}

# Find file whose name starts with a given string:
function ffs() {
  /usr/bin/find . -name "$@"'*' ;
}

# Find file whose name ends with a given string:
function ffe() {
  /usr/bin/find . -name '*'"$@" ;
}

# Search for a file using MacOS Spotlight's metadata:
function spotlight () {
  mdfind "kMDItemDisplayName == '$@'wc";
}

# Display useful host related informaton:
ii() {
  echo -e "\nYou are logged on ${RED}$HOST"
  echo -e "\nAdditionnal information:$NC " ; uname -a
  echo -e "\n${RED}Users logged on:$NC " ; w -h
  echo -e "\n${RED}Current date :$NC " ; date
  echo -e "\n${RED}Machine stats :$NC " ; uptime
  echo -e "\n${RED}Current network location :$NC " ; scselect
  echo -e "\n${RED}Public facing IP Address :$NC " ;myip
  #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
  echo
}

# Grabs headers from web page:
httpheaders() {
  /usr/bin/curl -I -L $@ ;
}

# Download a web page and show info on what took time:
httpdebug() {
  /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n";
}

# Generates a tree view from the current directory:
function tree() {
  pwd
  ls -R | grep ":$" | \
  sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'
}

# cd into the last focused finder window
function cdfinder(){
  cd "$(osascript -e 'tell application "Finder"' \
     -e 'set myname to POSIX path of (target of window 1 as alias)' \
     -e 'end tell' 2>/dev/null)"
}

# Generates a random password:
function randpassw() {
  if [ -z $1 ]; then
    MAXSIZE=10
  else
    MAXSIZE=$1
  fi
  array1=(
    q w e r t y u i o p a s d f g h j k l z x c v b n m Q W E R T Y U I O P A S D
    F G H J K L Z X C V B N M 1 2 3 4 5 6 7 8 9 0
    \! \@ \$ \% \^ \& \* \! \@ \$ \% \^ \& \* \@ \$ \% \^ \& \*
  )
  MODNUM=${#array1[*]}
  pwd_len=0
  while [ $pwd_len -lt $MAXSIZE ]
  do
    index=$(($RANDOM%$MODNUM))
    echo -n "${array1[$index]}"
    ((pwd_len++))
  done
  echo
}
