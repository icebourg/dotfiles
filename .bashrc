#####################################################
# Aliases
#####################################################

alias s="screen -RAad"

# sshfs aliases
alias sshfs="~/bin/sshfs-static-leopard"

# make top default to ordering by CPU usage:
alias top='top -ocpu'

# more lightweight version of top which doesn't use so much CPU itself:
alias ttop='top -ocpu -R -F -s 2 -n30'

# flush dns cache
alias flush="dscacheutil -flushcache"

# list current directory sizes
alias dut="du -h -c -d 1"

# reload bashrc after it is modified
alias reload="source ~/.bashrc"

# don't launch X with our custom vim compilation
alias vim="vim -X"

# edit this bashrc file
alias vb="vim ~/.bashrc"

# print a directory tree
# directory tree - http://www.shell-fu.org/lister.php?id=209
alias dir='find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'

# calendar
alias cal=calendar

#####################################################
# Set Options
#####################################################

# Echoes all commands before executing.
#set -o verbose

# vi mode - not really sure I like this
#set -o vi 

#####################################################
# Environment Variables
#####################################################

# colors

# Define some colors first:
red='\[\e[0;31m\]'
RED='\[\e[1;31m\]'
blue='\[\e[0;34m\]'
BLUE='\[\e[1;34m\]'
cyan='\[\e[0;36m\]'
CYAN='\[\e[1;36m\]'
WHITE="\[\033[37;1m\]"
white=$WHITE
NC='\[\e[0m\]'              # No Color

# Frown/smiley idea from
# http://serverfault.com/questions/3743/what-useful-things-can-one-add-to-ones-bashrc
SMILEY="${WHITE}:)${NORMAL}"
FROWNY="${RED}:(${NORMAL}"
SELECT="if [ \$? = 0 ]; then echo \"${SMILEY}\"; else echo \"${FROWNY}\"; fi"

# Shell Prompt
export PS1="$NC[$blue\u@$red\h:$blue\W$NC]\`${SELECT}\`$blue--\$$NC ";

# ImageMagick stuff
export MAGICK_HOME="$HOME/bin/ImageMagick-6.5.3"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib"

# Set up environment variables
export PATH="/usr/local/bin:~/bin:/opt/local/bin:/opt/local/sbin:/usr/local/apache2/bin:/usr/local/mysql/bin/Library/Frameworks/Python.framework/Versions/Current/bin:$MAGICK_HOME/bin:/usr/texbin:$PATH" 

# Man Path ... if you're looking for a man
export MANPATH=/opt/local/share/man:$MANPATH

# cdpath, easy access to specific folders
export CDPATH=":$CDPATH:~:~/Sites/" 

export PYTHONPATH="/usr/local/lib/python2.4/site-packages/:${PYTHONPATH}"

#####################################################
# History Options
#####################################################

# Setup history options
HISTFILESIZE=1000000000 HISTSIZE=1000000

#####################################################
# Functions - fun things I've collected
#####################################################

# copy my ssh key to a remote user's authorized keys fils 
function addkey () {
	cat ~/.ssh/id_rsa.pub | ssh $* 'cat >> ~/.ssh/authorized_keys'
}

# show a pdf formatted man page
function pdfman () {
	man -t $* | open -f -a preview
}

# generate a few random numbers
function randn() {

	for ((i=0; i<=15; i+=1))
	do
		echo $RANDOM
	done

}

# Use OpenSSL to generate a bunch of random passwords
function password() {
	for ((i=0; i<=15; i+=1))
	do
		~/bin/randompassword.sh
	done
}
