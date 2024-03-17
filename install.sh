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




