#!/bin/bash

# Setup Shell
if [ -n "$($SHELL -c 'echo $ZSH_VERSION')" ]; then
    echo "Setting up ZSH"
    rm -fr ~/.oh-my-zsh
    rm -fr ~/.zshrc
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    ln -s `pwd`/zsh/dracula/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme
    ln -s `pwd`/zsh/zshrc ~/.zshrc
elif [ -n "$($SHELL -c 'echo $BASH_VERSION')" ]; then
    rm -fr ~/.bashrc
    rm -fr ~/.bash_colors
    rm -fr ~/.bash_aliases
    ln -s `pwd`/bash/bashrc ~/.bashrc
    ln -s `pwd`/bash/bash_colors ~/.bash_colors
    ln -s `pwd`/bash/bash_aliases ~/.bash_aliases
fi

# Setup git
rm -fr ~/.gitconfig
ln -s `pwd`/git/gitconfig ~/.gitconfig

# Setup nano
echo "Setup nano"
rm -fr ~/.nano
rm -fr ~/.nanorc
ln -s `pwd`/nano/nanorc ~/.nanorc
ln -s `pwd`/nano ~/.nano

# Setup VIM
echo "Setup VIM"
rm -fr ~/.vim
ln -s `pwd`/vim ~/.vim

# Setup mutt
echo "Setup mutt"
echo "Make sure you generate an oauth2 file - ./mutt_oauth2.py oauth2 --verbose --authorize"
rm -fr ~/.mutt
ln -s `pwd`/mutt ~/.mutt

# Setup lxterminal
echo "Setup lxterminal"
rm -fr ~/.config/lxterminal
ln -s `pwd`/config/lxterminal ~/.config/lxterminal

# Setup AwesomeWM
echo "Setup AwesomeWM"
rm -fr ~/.xinitrc
ln -s `pwd`/xinitrc ~/.xinitrc
ln -s `pwd`/config/awesome ~/.config/awesome

# Setup mpd
rm -fr ~/.config/mpd
ln -s `pwd`/config/mpd ~/.config/mpd

# Setup picom
rm -fr ~/.config/picom
ln -s `pwd`/config/picom ~/.config/picom

# Setup qutebrowser
rm -fr ~/.config/qutebrowser
ln -s `pwd`/config/qutebrowser ~/.config/qutebrowser

# Set Newsboat
rm -fr ~/.config/newsboat
ln -s `pwd`/config/newsboat ~/.config/newsboat






