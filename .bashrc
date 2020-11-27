# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# add golang to PATH
export PATH=$PATH:/usr/local/go/bin

export GOPATH=$HOME/Go

# add JDK to PATH
export PATH=$PATH:/usr/local/JDK11/jdk-11.0.8+10

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#export PS1="\e[0;33;1m[\u@\h \W]\$ \e[m"

#Import colorscheme from 'wal' asynchronously
# & Run the process in the background.
# () Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

alias config='/usr/bin/git --git-dir=/home/bikura/.cfg/ --work-tree=/home/bikura'
