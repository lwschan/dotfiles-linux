#!/bin/bash

# Install util-linux-user to for chsh to change shell
sudo dnf -y install util-linux-user

# Install ZSH
sudo dnf -y install zsh

# Install Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
