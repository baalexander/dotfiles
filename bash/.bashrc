
#-------------------------------------------------------------
# Source global definitions (if any)
#-------------------------------------------------------------

if [ -f /etc/bashrc ]; then
    . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi

#-------------------------------------------------------------
# Shell Prompt
#-------------------------------------------------------------

PS1='$PWD> '

#-------------------------------------------------------------
# Environment variables
#-------------------------------------------------------------

VISUAL=vim; export VISUAL
EDITOR=vim; export EDITOR

#-------------------------------------------------------------
# Aliases
#-------------------------------------------------------------

alias vi='vim'

# Prevents accidentally clobbering files.
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

alias ll='ls -al'

#-------------------------------------------------------------
# Colors
#-------------------------------------------------------------

function EXT_COLOR () { echo -ne "\e[38;5;$1m"; }
function CLOSE_COLOR () { echo -ne '\e[m'; }
export PS1="\[`EXT_COLOR 187`\]\u@\h\[`CLOSE_COLOR`\]\[`EXT_COLOR 174`\] \w \$ \[`CLOSE_COLOR`\] > "
export LS_COLORS='di=38;5;108:fi=00:*svn-commit.tmp=31:ln=38;5;116:ex=38;5;186'

#-------------------------------------------------------------
# Check platform (Mac OS X, Linux, FreeBSD, cygwin)
#-------------------------------------------------------------

platform='linux'
unamestr=$(uname)
if [[ "$unamestr" == 'Linux' ]]; then
  platform='linux'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
  platform='freebsd'
elif [[ "$unamestr" == 'Darwin' ]]; then
  platform='macosx'
fi

