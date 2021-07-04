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
export PATH=$PATH:$GOPATH/bin
export GOROOT=/usr/local/go/

# add rust to PATH
. "$HOME/Rust/.cargo/env"
export RUSTUP_HOME=$HOME/Rust/.rustup
export CARGO_HOME=$HOME/Rust/.cargo

# add JDK to PATH
export PATH=$PATH:/usr/local/JDK11/jdk-11.0.8+10
export PATH=$PATH:/usr/local/JDK11/jdk-11.0.8+10/bin

# postgres env variables
PGHOME=/usr/local/pgsql
export PGDATA=$PGHOME/data
export PGHOST=$PGDATA
export PGPORT=5432
export LD_LIBRARY_PATH=$PGHOME/lib
export PATH=$PGHOME/bin:$PATH

# for 3131 Compiler project
export CLASSPATH=$HOME/Documents/UNSW/3131/Compiler:/usr/local/jasmin/classes:$HOME/Documents/UNSW/3131/Compiler/VC/CodeGen:$HOME/Documents/UNSW/3131/DC

# shell prompt colors
export PS1="[ \u@\h \[\e[0;93m\]\W\[\e[0m\] ]\$ "
# Uncomment the following line if you don't like systemctl's auto-paging feature: export SYSTEMD_PAGER=

# User specific aliases and functions
#export PS1="\e[0;33;1m[\u@\h \W]\$ \e[m"
alias config='/usr/bin/git --git-dir=/home/bikura/.cfg/ --work-tree=/home/bikura'
