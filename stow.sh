#!/bin/bash

# Remove the original files
rm $HOME/.gitconfig $HOME/.zshrc

# Stow ssh files
stow --verbose --target=$HOME/ssh --dir=dotfiles/.ssh .

# Stow git files
stow --verbose --target=$HOME --dir=dotfiles/git .

# Stow zsh files
stow --verbose --target=$HOME --dir=dotfiles/shell .

# Stow zsh themes
stow --verbose --target=$HOME/.oh-my-zsh/custom/themes --dir=zsh-themes .

# Stow zsh plugins
stow --verbose --target=$HOME/.oh-my-zsh/custom/plugins --dir=zsh-plugins .

# Stow jenv
mkdir $HOME/.jenv
stow --verbose --target=$HOME/.jenv --dir=utilities jenv
jenv enable-plugin export

# Stow tfenv
mkdir $HOME/.tfenv
stow --verbose --target=$HOME/.tfenv --dir=utilities tfenv
