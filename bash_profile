if [ -f ~/.bashrc ]; then
source ~/.bashrc
fi
if [ -f ~/Dropbox/scripts/dir.sh ]; then
source ~/Dropbox/scripts/dir.sh
fi
# Define some colors first:
DULL=0
BRIGHT=1

FG_BLACK=30
FG_RED=31
FG_GREEN=32
FG_YELLOW=33
FG_BLUE=34
FG_VIOLET=35
FG_CYAN=36
FG_WHITE=37

FG_NULL=00

BG_BLACK=40
BG_RED=41
BG_GREEN=42
BG_YELLOW=43
BG_BLUE=44
BG_VIOLET=45
BG_CYAN=46
BG_WHITE=47
BG_NULL=00
##
# ANSI Escape Commands
##
ESC="\033"
NORMAL="\[$ESC[m\]"
RESET="\[$ESC[${DULL};${FG_WHITE};${BG_NULL}m\]"
##
# Shortcuts for Colored Text ( Bright and FG Only )
##
# DULL TEXT
BLACK="\[$ESC[${DULL};${FG_BLACK}m\]"
RED="\[$ESC[${DULL};${FG_RED}m\]"
GREEN="\[$ESC[${DULL};${FG_GREEN}m\]"
YELLOW="\[$ESC[${DULL};${FG_YELLOW}m\]"
BLUE="\[$ESC[${DULL};${FG_BLUE}m\]"
VIOLET="\[$ESC[${DULL};${FG_VIOLET}m\]"
CYAN="\[$ESC[${DULL};${FG_CYAN}m\]"
WHITE="\[$ESC[${DULL};${FG_WHITE}m\]"
# BRIGHT TEXT
BRIGHT_BLACK="\[$ESC[${BRIGHT};${FG_BLACK}m\]"
BRIGHT_RED="\[$ESC[${BRIGHT};${FG_RED}m\]"
BRIGHT_GREEN="\[$ESC[${BRIGHT};${FG_GREEN}m\]"
BRIGHT_YELLOW="\[$ESC[${BRIGHT};${FG_YELLOW}m\]"
BRIGHT_BLUE="\[$ESC[${BRIGHT};${FG_BLUE}m\]"
BRIGHT_VIOLET="\[$ESC[${BRIGHT};${FG_VIOLET}m\]"
BRIGHT_CYAN="\[$ESC[${BRIGHT};${FG_CYAN}m\]"
BRIGHT_WHITE="\[$ESC[${BRIGHT};${FG_WHITE}m\]"


export EDITOR="/usr/bin/vim"
export SVN_EDITOR='vim'
alias vims='vim -S $HOME/vimtoday.ses'
# History
shopt -s histappend
export HISTSIZE=5000
export HISTFILESIZE=100000
export HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE="ls:cd:ll"
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
alias ls='ls -hF'
alias lr='ls -lR' 
alias la="ls -la"
alias ll="ls -la"
alias cd..="cd .."
alias h='history'
#PATH
export PATH="$HOME/scripts:$HOME/Dropbox/scripts:$HOME/scripts/movgrab:$PATH"
export PATH=$PATH:"/Applications/MAMP/Library/bin"
export PATH="/usr/local/bin:/usr/bin:$PATH"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="$HOME/bin:$PATH"
source /usr/bin/git-completion.bash
alias gs="git status"
alias g='git'
alias rhino="java org.mozilla.javascript.tools.shell.Main "
alias ql="qlmanage -p"

PROMPT_COMMAND='export ERR=$?'
#PS1="${WHITE}[${BRIGHT_RED}\u$@\h${BRIGHT_VIOLET}:\w${WHITE}]${NORMAL}\$ ${RESET}"
PS1="${WHITE}[${BRIGHT_RED}\u$@\h${BRIGHT_VIOLET}:\w${RED}"'$(__git_ps1)'"${WHITE}]${NORMAL}\$ ${RESET}"
#PS1='[\u@\h \w$(__git_ps1 " (%s)")]\$ '

unset MAILCHECK
function wiki () { echo $1;/usr/bin/dig +short txt $1.wp.dg.cx;}

# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'$*'*' -ls ; }
