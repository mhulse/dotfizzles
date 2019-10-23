# Default Python:
alias python=python3
# Default pip:
alias pip=pip3

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

# Open current directory in Finder.app and Atom.app:
alias go="open . && atom ."

# XAMPP shortcuts:
alias xampp="sudo /Applications/XAMPP/xamppfiles/xampp restart"
alias xampp_stop="sudo /Applications/XAMPP/xamppfiles/xampp stop"
alias xampp_start="sudo /Applications/XAMPP/xamppfiles/xampp start"
alias xo='function __xo() { xampp && open "http://"$1; }; __xo'

# Alias git:
alias g="git"
