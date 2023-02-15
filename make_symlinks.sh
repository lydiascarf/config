#!/bin/bash

if [ -e ~/.zshrc ]
 then cp ~/.zshrc ~/.zshrc.pre-make-symlinks
fi
rm -f ~/.zshrc
ln -s ~/config/dotfiles/.zshrc ~/.zshrc
