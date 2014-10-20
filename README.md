About
=====

My config files.

Linux environment
=================

    ln -s .Xresources ~/.Xresources
    ln -s .fonts.conf ~/.config/fontconfig/fonts.conf
    ln -s .gtkrc-2.0.mine ~/
    ln -s .mailcap ~/
    ln -s .zshenv .zshrc ~/ && touch ~/.zshenv_local ~/.zshrc_local
    ln -s XCompose-ru ~/.XCompose
    mkdir -p ~/.mplayer
    ln -s mplayer/config ~/.mplayer/
    ln -s mplayer/input.conf ~/.mplayer/
    cp gimp-ps-menurc ~/.gimp-2.8/menurc

Mac OS X environment
====================

    ln -s .slate ~/
    sh mac/defaults.sh
    cd mac/russian-shortcuts && make install
    

Both Linux and Mac OS X
=======================

    ln -s .vimrc ~/
    ln -s global-gitconfig ~/.gitconfig
