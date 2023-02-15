#!/bin/bash

if [ -e ~/.zshrc ]
 then cp ~/.zshrc ~/.zshrc.pre-setup-config
fi
rm -f ~/.zshrc
ln -s ~/config/dotfiles/.zshrc ~/.zshrc

if [ -e ~/.gitconfig ]
 then cp ~/.gitconfig ~/.gitconfig.pre-setup-config
fi
rm -f ~/.gitconfig
ln -s ~/config/dotfiles/.gitconfig ~/.gitconfig
