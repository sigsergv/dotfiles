export LANG=en_US
export LANGUAGE=en_US:en_GB:en
export LC_CTYPE="en_US.utf8"
export LC_NUMERIC="en_US.utf8"
export LC_TIME="ru_RU.utf8"
export LC_COLLATE="en_US.utf8"
export LC_MONETARY="en_US.utf8"
export LC_MESSAGES="en_US.utf8"
export LC_PAPER="ru_RU.utf8"
export LC_NAME="en_US.utf8"
export LC_ADDRESS="ru_RU.utf8"
export LC_TELEPHONE="ru_RU.utf8"
export LC_MEASUREMENT="ru_RU.utf8"
export LC_IDENTIFICATION="en_US.utf8"


export HISTFILE=~/.histfile
export HISTSIZE=1000
export SAVEHIST=1000
export EDITOR=vim
export PATH=/usr/bin:/usr/games:/bin:~/bin
export GREP_OPTIONS="--color --exclude-dir=.svn --exclude-dir=.hg --exclude-dir=.git"
#export TERM=xterm

export DEBFULLNAME="Sergey Stolyarov"
export DEBEMAIL="sergei.stolyarov@regolit.com"
export WORDCHARS='*?_-.[]~=;!#$%^(){}<>'
export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dawt.useSystemAAFontSettings=lcd' 

# these variables are disabled, place them to ~/.zshrc_local if needed
# export GIT_SSH=$HOME/bin/git-ssh

source ~/.zshenv_local

## all lines below this one should not be uncommented
## This line for macos where less pager doesn't support mouse scroll
# export MANPAGER="col -b | view -c 'set ft=man nomod nolist' -"
# 
