About
=====

My config files.

First checkout/clone:

    git clone https://github.com/sigsergv/dotfiles.git && cd dotfiles

Linux environment
=================

    ln -s `pwd`/.Xresources ~/.Xresources
    ln -s `pwd`/.fonts.conf ~/.config/fontconfig/fonts.conf
    ln -s `pwd`/.gtkrc-2.0.mine ~/
    ln -s `pwd`/.mailcap ~/
    ln -s `pwd`/.zshenv .zshrc ~/ && touch ~/.zshenv_local ~/.zshrc_local
    ln -s `pwd`/XCompose-ru ~/.XCompose
    mkdir -p ~/.mplayer
    ln -s `pwd`/mplayer/config ~/.mplayer/
    ln -s `pwd`/mplayer/input.conf ~/.mplayer/
    cp `pwd`/gimp-ps-menurc ~/.gimp-2.8/menurc

Mac OS X environment
====================

    ln -s `pwd`/.slate ~/
    sh `pwd`/mac/defaults.sh
    cd `pwd`/mac/russian-shortcuts && make install
    

Both Linux and Mac OS X
=======================

    ln -s `pwd`/.vimrc ~/
    ln -s `pwd`/global-gitconfig ~/.gitconfig
