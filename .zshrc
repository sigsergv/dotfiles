bindkey -e
bindkey "^[[1~" beginning-of-line
bindkey "\e[3~" delete-char
bindkey "^[[4~" end-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit -u

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
alias gerp=grep
#alias f="find . -name "

ff() { find . -name \*$1\* | grep -v .svn }

setopt no_auto_menu
setopt auto_pushd
setopt extended_glob
#setopt share_history
setopt hist_ignore_all_dups
#setopt hist_no_store
setopt hist_reduce_blanks
setopt histignorespace
setopt inc_append_history
setopt extended_history
setopt pushd_ignore_dups
setopt no_bang_hist

source ~/.zshrc_local
