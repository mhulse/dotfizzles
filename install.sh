#!/usr/bin/env bash

# http://www.unixcl.com/2008/03/creating-menus-using-select-bash.html
# http://askubuntu.com/questions/1705/how-can-i-create-a-select-menu-in-a-shell-script
# http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_06.html
# http://unix.stackexchange.com/questions/257290
# http://www.thegeekstuff.com/2010/07/bash-case-statement/

# Install files:
function install() {
	
	now=`date '+%Y%m%d%H%M%S'`;
	
	# Switch to user’s home directory:
	cd $HOME
	
	if (($1)); then
		#zip -r archive_name.zip noexist.foo > /dev/null 2>&1
		zip -r "dotfizzles.$now.zip" \
			   ".virtualenvs" \
		       ".bash_profile" \
		       ".bash" \
		       ".bashrc" \
			   ".curlrc" \
		       ".gemrc" \
		       ".gitconfig" \
		       ".gitignore" \
		       ".hushlogin" \
		       ".inputrc" \
		       ".mkshrc" \
		       ".npmrc" \
		       ".profile" \
		       ".scripts" \
		       ".zshrc" \
		       "mm.cfg" \
		       > /dev/null 2>&1
		
	fi
	
	# Get the zip file and extract all files:
	curl -sS -#L https://github.com/mhulse/dotfizzles/tarball/master | tar -xzv --strip-components 1 --exclude={install.sh,README.md}
	
	# Let the use know that we are done:
	echo $'\n'"--------------------------------------------------------------"
	echo "Congrats! Installation was successful!"
	echo "Run \"source ~/.bash_profile\" to reload your session."
	echo "Optimally, it’s probably a good idea to restart your computer."
	echo -e "\e[4mhttps://github.com/mhulse/dotfizzles\e[24m"
	
	exit 0
	
}

# Ask the user if they want to backup their previous fizzles:
function choose() {
	
	read -p "Back up previous versions (y/n)? " choice
	case "$choice" in
		y|Y)
			install 1
			;;
		n|N)
			install
			;;
		*)
			echo "Your choice (${choice}) does not compute. Goodbye."
			;;
	esac
	
}

# Tidy up the terminal window:
clear

# Create menu:
choose

# Done!
# For more information about this script, see:
# https://github.com/mhulse/dotfizzles
