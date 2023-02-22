#!/bin/bash

# Install zsh
sudo apt update -y
sudo apt install zsh
chsh -s $(which zsh)

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# TODO: Guarantee we're running in the dir the script is in

# Clone submodules
git submodule init
git submodule update

# Apply shell-mommy patch (Deletes working changes)
pushd shell-mommy
git restore .
git apply ../patches/shell-mommy-zsh.patch
popd

# Replace zshrc
if [ -e ~/.zshrc ]
 then cp ~/.zshrc ~/.zshrc.pre-setup-config
fi
rm -f ~/.zshrc
ln -s ~/config/dotfiles/.zshrc ~/.zshrc

# Source zshrc
source ~/.zshrc

# Replace gitconfig
if [ -e ~/.gitconfig ]
 then cp ~/.gitconfig ~/.gitconfig.pre-setup-config
fi
rm -f ~/.gitconfig
ln -s ~/config/dotfiles/.gitconfig ~/.gitconfig
