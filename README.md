About
=====

My config files.

First checkout/clone:

    git clone https://github.com/sigsergv/dotfiles.git && cd dotfiles

Linux environment
=================

    ln -s `pwd`/.Xresources ~/.Xresources
    ln -s `pwd`/linux/fonts.conf ~/.config/fontconfig/fonts.conf
    ln -s `pwd`/.gtkrc-2.0.mine ~/
    mkdir -p ~/.config/gtk-3.0
    ln -s `pwd`/linux/gtk_3.0.css ~/.config/gtk-3.0/gtk.css
    ln -s `pwd`/.sqliterc ~/
    ln -s `pwd`/.mailcap ~/
    ln -s `pwd`/.zshenv `pwd`/.zshrc ~/ && touch ~/.zshenv_local ~/.zshrc_local
    ln -s `pwd`/XCompose-ru ~/.XCompose
    ln -s `pwd`/.tmux.conf ~/
    mkdir -p ~/.mplayer
    ln -s `pwd`/mplayer/config ~/.mplayer/
    ln -s `pwd`/mplayer/input.conf ~/.mplayer/
    cp `pwd`/gimp-ps-menurc ~/.gimp-2.8/menurc
    mkdir -p ~/.config/Code/User
    ln -s `pwd`/vscode/keybindings-linux.json ~/.config/Code/User/keybindings.json
    ln -s `pwd`/vscode/settings.json ~/.config/Code/User

Mac OS X environment
====================

    ln -s `pwd`/.slate ~/
    sh `pwd`/mac/defaults.sh
    cd `pwd`/mac/russian-shortcuts && make install
    

Both Linux and Mac OS X
=======================

    ln -s `pwd`/.vimrc ~/
    ln -s `pwd`/global-gitconfig ~/.gitconfig


Other
=====

Install .vimrc
--------------

Install pathogen from <https://github.com/tpope/vim-pathogen>.

    curl -o ~/.vimrc -L https://github.com/sigsergv/dotfiles/raw/master/.vimrc

Fixes and improvements for linux/kde
------------------------------------

    cp intel-kde-fixes.sh freetype2-fix.sh $HOME/.config/plasma-workspace/env/
    chmod +x $HOME/.config/plasma-workspace/env/*.sh


Bootstrap linux environment
---------------------------

Use script `bootstrap-linux-env` to setup linux (debian/ubuntu-only, actually) environment. It downloads all required scripts and packages
and then installs them.
