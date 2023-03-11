# zsh read configuration files in this order:
#
# 1. /etc/zshenv (doesn't exist in MacOS)
# 2. ~/.zshenv
# 3. LOGIN MODE
#    /etc/zprofile
#    ~/.zprofile
# 4. INTERACTIVE MODE
#    /etc/zshrc
#    ~/.zshrc
# 5. LOGIN MODE
#    /etc/zlogin
#    ~/.zlogin
#
#
# In MacOS new terminal window/tab is ALWAYS login shell so when /etc/zprofile is executed it modifies $PATH
# environment variable and reorder path items. So if you need to add custom path items modify PATH in ~/.zshrc or
# in ~/.zshrc_local (preferred way as this file unique for each computer)

bindkey -e
bindkey "^[[1~" beginning-of-line
bindkey "\e[3~" delete-char
bindkey "^[[4~" end-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

# The following lines were added by compinstall (zsh completion system)
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit -u
##

# remove duplicates from PATH and path variables ($path is tied to $PATH but $path is array not string)
typeset -U PATH path

PS1='[%n@%m:%~]%70(l|
|)%# '

case $TERM in
dumb)
    export PROMPT="%#"
    ;;
*)
    export PROMPT="[%(!.%S.)%n%(!.%s.)@%m:%~]%(?..%B%?%b)%70(l|
|)%B%#%b "
    ;;
esac

# changes tab title when command is executed
#case $TERM in
#    xterm*|Eterm*|rxvt*)
#        function precmd { print -nP "\033]2;[zsh@%m:%~]%#\007\033]1;[%m:%~]%#\007" }
#        function preexec { local s=${2//\\/\\\\}; print -nP "\033]2;[zsh@%m:%~]%# $s\007\033]1;[%m:%~]%# $s\007" }
#    ;;
#esac

setTerminalText () {
    # echo works in bash & zsh
    local mode=$1 ; shift
    echo -ne "\033]$mode;$@\007"
}
stt_both  () { setTerminalText 0 $@; }
stt_tab   () { setTerminalText 1 $@; }
stt_title () { setTerminalText 2 $@; }

alias ll='ls -la --color=y'
#alias gerp=grep
#alias f="find . -name "

local GREP_CMD
if [ -x /bin/grep ]; then
    GREP_CMD=/bin/grep
fi

if [ -x /usr/bin/grep ]; then
    GREP_CMD=/usr/bin/grep
fi

alias grep="$GREP_CMD --color --exclude-dir=.svn --exclude-dir=.hg --exclude-dir=.git"

#ff() { find . -name \*$1\* | grep -v .svn }

setopt no_auto_menu
setopt rmstarsilent
setopt auto_pushd
setopt extended_glob
#setopt share_history
setopt hist_ignore_all_dups
#setopt hist_no_store
setopt hist_reduce_blanks
setopt HIST_IGNORE_SPACE
setopt inc_append_history
setopt extended_history
setopt pushd_ignore_dups
setopt no_bang_hist

# if you need to modify PATH environment variable add the line below to ~/.zshrc_local
# DO NOT USE ~/.zshenv !
# path=('/opt/homebrew/opt/openjdk/bin' $path)

source ~/.zshrc_local

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
